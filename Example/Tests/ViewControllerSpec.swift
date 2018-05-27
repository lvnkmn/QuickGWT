import Quick
import QuickGWT
import Nimble
import InjectableLoggers

class ViewControllerSpec: QuickSpec {
    
    override func spec() {
        
        var mockLogger: MockLogger!
        beforeEach {
            mockLogger = MockLogger()
            logger.relay = mockLogger
        }
        
        given("a ViewController") {
            
            var sut: ViewController!
            beforeEach {
                sut = ViewController()
            }
            
            when("viewModel is set", closure: {
                
                var stubViewModel: ViewController.ViewModel!
                beforeEach {
                    stubViewModel = ViewController.ViewModel(title: "stub title", backgroundColor: UIColor(red: 0.3, green: 0.4, blue: 0.5, alpha: 0.6))
                    sut.viewModel = stubViewModel
                }
                
                and("viewDidLoad", closure: {
                    beforeEach {
                        sut.viewDidLoad()
                    }
                    
                    then("title is set", closure: {
                        expect(sut.title).to(equal(stubViewModel.title))
                    })
                    
                    then("backgroundColor is set", closure: {
                        expect(sut.view.backgroundColor).to(equal(stubViewModel.backgroundColor))
                    })
                })
            })
            
            when("viewModel is not set", closure: {
                
                and("viewDidLoad", closure: {
                    beforeEach {
                        sut.viewDidLoad()
                    }
                    
                    then("an error is logged", closure: {
                        expect(mockLogger.loggedMessages(atLevel: .error).last?.message as? String).to(equal("Expected viewModel"))
                    })
                })
            })
        }
    }
}
