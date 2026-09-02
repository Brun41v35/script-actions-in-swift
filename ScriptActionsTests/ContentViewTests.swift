import XCTest
@testable import ScriptActions

final class ContentViewTests: XCTestCase {

    func test_GenerateListJSON() throws {
        let contentView = ContentView()

        let data = try JSONEncoder().encode(contentView.list)

        let attachment = XCTAttachment(
            data: data,
            uniformTypeIdentifier: "public.json"
        )

        attachment.name = "example_file_generated.json"
        attachment.lifetime = .keepAlways
        add(attachment)

        XCTAssertEqual(contentView.list.count, 3)
    }
}
