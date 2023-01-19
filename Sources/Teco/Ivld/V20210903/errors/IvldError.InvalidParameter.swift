//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIvldError {
    public struct InvalidParameter: TCIvldErrorType {
        enum Code: String {
            case invalidCategoryId = "InvalidParameter.InvalidCategoryId"
            case invalidFilePath = "InvalidParameter.InvalidFilePath"
            case invalidImage = "InvalidParameter.InvalidImage"
            case invalidImageId = "InvalidParameter.InvalidImageId"
            case invalidL1Category = "InvalidParameter.InvalidL1Category"
            case invalidL2Category = "InvalidParameter.InvalidL2Category"
            case invalidMD5 = "InvalidParameter.InvalidMD5"
            case invalidMediaId = "InvalidParameter.InvalidMediaId"
            case invalidMediaLabel = "InvalidParameter.InvalidMediaLabel"
            case invalidMediaLang = "InvalidParameter.InvalidMediaLang"
            case invalidMediaName = "InvalidParameter.InvalidMediaName"
            case invalidMediaPreknownInfo = "InvalidParameter.InvalidMediaPreknownInfo"
            case invalidMediaStatus = "InvalidParameter.InvalidMediaStatus"
            case invalidMediaType = "InvalidParameter.InvalidMediaType"
            case invalidName = "InvalidParameter.InvalidName"
            case invalidPageNumber = "InvalidParameter.InvalidPageNumber"
            case invalidPageSize = "InvalidParameter.InvalidPageSize"
            case invalidParam = "InvalidParameter.InvalidParam"
            case invalidPersonId = "InvalidParameter.InvalidPersonId"
            case invalidSortBy = "InvalidParameter.InvalidSortBy"
            case invalidSortOrder = "InvalidParameter.InvalidSortOrder"
            case invalidTaskId = "InvalidParameter.InvalidTaskId"
            case invalidTaskName = "InvalidParameter.InvalidTaskName"
            case invalidTaskStatus = "InvalidParameter.InvalidTaskStatus"
            case invalidURL = "InvalidParameter.InvalidURL"
            case invalidUin = "InvalidParameter.InvalidUin"
            case nameTooLong = "InvalidParameter.NameTooLong"
            case paramTooLong = "InvalidParameter.ParamTooLong"
            case unsupportURL = "InvalidParameter.UnsupportURL"
            case urlNotResolved = "InvalidParameter.URLNotResolved"
            case other = "InvalidParameter"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 自定义人物类型ID不合法。
        ///
        /// 检查自定义人物类型ID是否正确
        public static var invalidCategoryId: InvalidParameter {
            InvalidParameter(.invalidCategoryId)
        }

        /// 文件路径不合法。
        ///
        /// 检查文件路径是否正确
        public static var invalidFilePath: InvalidParameter {
            InvalidParameter(.invalidFilePath)
        }

        /// 图片不合法。
        ///
        /// 检查图片是否合规
        public static var invalidImage: InvalidParameter {
            InvalidParameter(.invalidImage)
        }

        /// 图片ID不合法。
        ///
        /// 检查图片ID是否合规
        public static var invalidImageId: InvalidParameter {
            InvalidParameter(.invalidImageId)
        }

        /// 一级自定义类型不合法。
        ///
        /// 检查一级类型是否有效
        public static var invalidL1Category: InvalidParameter {
            InvalidParameter(.invalidL1Category)
        }

        /// 二级自定义类型不合法。
        ///
        /// 检查二级类型是否有效
        public static var invalidL2Category: InvalidParameter {
            InvalidParameter(.invalidL2Category)
        }

        /// MD5不合法。
        ///
        /// 检查MD5是否正确
        public static var invalidMD5: InvalidParameter {
            InvalidParameter(.invalidMD5)
        }

        /// 媒体ID不合法。
        ///
        /// 检查MediaId的格式是否正确
        public static var invalidMediaId: InvalidParameter {
            InvalidParameter(.invalidMediaId)
        }

        /// MediaLabel无效。
        ///
        /// 检查MediaLabel是否存在且有效
        public static var invalidMediaLabel: InvalidParameter {
            InvalidParameter(.invalidMediaLabel)
        }

        /// MediaLang无效。
        ///
        /// 检查MediaLang是否存在且有效
        public static var invalidMediaLang: InvalidParameter {
            InvalidParameter(.invalidMediaLang)
        }

        /// 媒体名称非法。
        ///
        /// 检查媒资名称是否合法
        public static var invalidMediaName: InvalidParameter {
            InvalidParameter(.invalidMediaName)
        }

        /// MediaPreknownInfo无效。
        ///
        /// 检查MediaPreknownInfo内容是否存在且有效
        public static var invalidMediaPreknownInfo: InvalidParameter {
            InvalidParameter(.invalidMediaPreknownInfo)
        }

        /// 媒资状态不合法。
        ///
        /// 检查媒资状态是否正确
        public static var invalidMediaStatus: InvalidParameter {
            InvalidParameter(.invalidMediaStatus)
        }

        /// MediaType无效。
        ///
        /// 检查MediaType是否存在且有效
        public static var invalidMediaType: InvalidParameter {
            InvalidParameter(.invalidMediaType)
        }

        /// 名称不合法。
        ///
        /// 检查名称是否合法
        public static var invalidName: InvalidParameter {
            InvalidParameter(.invalidName)
        }

        /// 分页序号不合法。
        ///
        /// 检查分页号是否正确
        public static var invalidPageNumber: InvalidParameter {
            InvalidParameter(.invalidPageNumber)
        }

        /// 分页大小不合法。
        ///
        /// 检查分页大小是否正确
        public static var invalidPageSize: InvalidParameter {
            InvalidParameter(.invalidPageSize)
        }

        /// 输入字段 %!s(MISSING) 不合法。
        ///
        /// 检查输入字段是否合规
        public static var invalidParam: InvalidParameter {
            InvalidParameter(.invalidParam)
        }

        /// 人物ID不合法。
        ///
        /// 检查人物ID是否合规
        public static var invalidPersonId: InvalidParameter {
            InvalidParameter(.invalidPersonId)
        }

        /// 排序字段不合法。
        ///
        /// 检查任务排序条件
        public static var invalidSortBy: InvalidParameter {
            InvalidParameter(.invalidSortBy)
        }

        /// 排序方式不合法。
        ///
        /// 检查排序方式是否正确
        public static var invalidSortOrder: InvalidParameter {
            InvalidParameter(.invalidSortOrder)
        }

        /// 任务ID不合法。
        ///
        /// 检查TaskId的内容是否正确
        public static var invalidTaskId: InvalidParameter {
            InvalidParameter(.invalidTaskId)
        }

        /// 任务名称不合法。
        ///
        /// 检查任务名称是否合法
        public static var invalidTaskName: InvalidParameter {
            InvalidParameter(.invalidTaskName)
        }

        /// 任务状态不合法。
        ///
        /// 检查任务状态是否正确
        public static var invalidTaskStatus: InvalidParameter {
            InvalidParameter(.invalidTaskStatus)
        }

        /// URL不合法。
        ///
        /// 检查URL是否正确
        public static var invalidURL: InvalidParameter {
            InvalidParameter(.invalidURL)
        }

        /// 用户Uin无效。
        ///
        /// 检查用户Uin是否正确
        public static var invalidUin: InvalidParameter {
            InvalidParameter(.invalidUin)
        }

        /// 名称超过长度限制。
        ///
        /// 检查名称是否超过长度限制
        public static var nameTooLong: InvalidParameter {
            InvalidParameter(.nameTooLong)
        }

        /// 参数超过长度限制。
        ///
        /// 检查输入字段是否合规
        public static var paramTooLong: InvalidParameter {
            InvalidParameter(.paramTooLong)
        }

        /// 不支持的URL类型。
        ///
        /// 检查URL是否正确
        public static var unsupportURL: InvalidParameter {
            InvalidParameter(.unsupportURL)
        }

        /// 输入URL域名无法解析。
        ///
        /// 请检查URL是否可以解析
        public static var urlNotResolved: InvalidParameter {
            InvalidParameter(.urlNotResolved)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asIvldError() -> TCIvldError {
            let code: TCIvldError.Code
            switch self.error {
            case .invalidCategoryId:
                code = .invalidParameter_InvalidCategoryId
            case .invalidFilePath:
                code = .invalidParameter_InvalidFilePath
            case .invalidImage:
                code = .invalidParameter_InvalidImage
            case .invalidImageId:
                code = .invalidParameter_InvalidImageId
            case .invalidL1Category:
                code = .invalidParameter_InvalidL1Category
            case .invalidL2Category:
                code = .invalidParameter_InvalidL2Category
            case .invalidMD5:
                code = .invalidParameter_InvalidMD5
            case .invalidMediaId:
                code = .invalidParameter_InvalidMediaId
            case .invalidMediaLabel:
                code = .invalidParameter_InvalidMediaLabel
            case .invalidMediaLang:
                code = .invalidParameter_InvalidMediaLang
            case .invalidMediaName:
                code = .invalidParameter_InvalidMediaName
            case .invalidMediaPreknownInfo:
                code = .invalidParameter_InvalidMediaPreknownInfo
            case .invalidMediaStatus:
                code = .invalidParameter_InvalidMediaStatus
            case .invalidMediaType:
                code = .invalidParameter_InvalidMediaType
            case .invalidName:
                code = .invalidParameter_InvalidName
            case .invalidPageNumber:
                code = .invalidParameter_InvalidPageNumber
            case .invalidPageSize:
                code = .invalidParameter_InvalidPageSize
            case .invalidParam:
                code = .invalidParameter_InvalidParam
            case .invalidPersonId:
                code = .invalidParameter_InvalidPersonId
            case .invalidSortBy:
                code = .invalidParameter_InvalidSortBy
            case .invalidSortOrder:
                code = .invalidParameter_InvalidSortOrder
            case .invalidTaskId:
                code = .invalidParameter_InvalidTaskId
            case .invalidTaskName:
                code = .invalidParameter_InvalidTaskName
            case .invalidTaskStatus:
                code = .invalidParameter_InvalidTaskStatus
            case .invalidURL:
                code = .invalidParameter_InvalidURL
            case .invalidUin:
                code = .invalidParameter_InvalidUin
            case .nameTooLong:
                code = .invalidParameter_NameTooLong
            case .paramTooLong:
                code = .invalidParameter_ParamTooLong
            case .unsupportURL:
                code = .invalidParameter_UnsupportURL
            case .urlNotResolved:
                code = .invalidParameter_URLNotResolved
            case .other:
                code = .invalidParameter
            }
            return TCIvldError(code, context: self.context)
        }
    }
}
