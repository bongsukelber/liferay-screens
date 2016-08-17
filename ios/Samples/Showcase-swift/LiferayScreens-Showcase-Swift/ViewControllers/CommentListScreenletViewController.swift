/**
* Copyright (c) 2000-present Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
import UIKit
import LiferayScreens


class CommentListScreenletViewController: UIViewController,
	CommentListScreenletDelegate {

	@IBOutlet weak var listScreenlet: CommentListScreenlet?

	override func viewDidLoad() {
		super.viewDidLoad()

		self.listScreenlet?.delegate = self
		self.listScreenlet?.presentingViewController = self
		self.listScreenlet?.loadList()
	}

	}

	}

	//MARK: CommentListScreenletDelegate

	func screenlet(screenlet: CommentListScreenlet, onCommentListError error: NSError) {
		print("DELEGATE: onCommentListError called -> \(error)\n")
	}

	func screenlet(screenlet: CommentListScreenlet, onSelectedComment comment: Comment) {
		print("DELEGATE: onCommentSelected called -> \(comment)\n")
	}

	func screenlet(screenlet: CommentListScreenlet, onListResponseComments comments: [Comment]) {
		print("DELEGATE: onCommentListResponse called -> \(comments)\n")
	}

	func screenlet(screenlet: CommentListScreenlet, onDeletedComment comment: Comment) {
		print("DELEGATE: onDeletedComment called -> \(comment)\n")
	}

	func screenlet(screenlet: CommentListScreenlet, onCommentDelete comment: Comment, onError error: NSError) {
		print("DELEGATE: onCommentDelete onError called -> \(comment) \(error)\n")
	}

	func screenlet(screenlet: CommentListScreenlet, onUpdatedComment comment: Comment) {
		print("DELEGATE: onUpdatedComment called -> \(comment)\n")
	}

	func screenlet(screenlet: CommentListScreenlet, onCommentUpdate comment: Comment, onError error: NSError) {
		print("DELEGATE: onCommentUpdate onError called -> \(comment) \(error)\n")
	}

}
