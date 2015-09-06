class Article < ActiveRecord::Base
	# photoをattachファイルとする。stylesで画像サイズを定義できる
	has_attached_file :photo1, styles: { medium: "300x300>", thumb: "100x100>" }

	# ファイルの拡張子を指定（これがないとエラーが発生する）
	validates_attachment :photo1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	# photoをattachファイルとする。stylesで画像サイズを定義できる
	has_attached_file :photo2, styles: { medium: "300x300>", thumb: "100x100>" }

	# ファイルの拡張子を指定（これがないとエラーが発生する）
	validates_attachment :photo2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

		# photoをattachファイルとする。stylesで画像サイズを定義できる
	has_attached_file :photo3, styles: { medium: "300x300>", thumb: "100x100>" }

	# ファイルの拡張子を指定（これがないとエラーが発生する）
	validates_attachment :photo3, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

		# photoをattachファイルとする。stylesで画像サイズを定義できる
	has_attached_file :photo4, styles: { medium: "300x300>", thumb: "100x100>" }

	# ファイルの拡張子を指定（これがないとエラーが発生する）
	validates_attachment :photo4, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

		# photoをattachファイルとする。stylesで画像サイズを定義できる
	has_attached_file :photo5, styles: { medium: "300x300>", thumb: "100x100>" }

	# ファイルの拡張子を指定（これがないとエラーが発生する）
	validates_attachment :photo5, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

		# photoをattachファイルとする。stylesで画像サイズを定義できる
	has_attached_file :photo_top, styles: { medium: "300x300>", thumb: "100x100>" }

	# ファイルの拡張子を指定（これがないとエラーが発生する）
	validates_attachment :photo_top, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	time = Article.find(1)


end
