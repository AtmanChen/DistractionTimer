import AppFeature
import SwiftUI
import Model

@main
struct DistractionTimerApp: App {
	let persistenceController = PersistenceController.shared

	var body: some Scene {
		WindowGroup {
			ContentView()
				.environment(\.managedObjectContext, persistenceController.container.viewContext)
		}
	}
}
