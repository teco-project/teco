//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    public struct InvalidParameter: TCErrorType {
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
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
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
    }
}

extension TCIvldError.InvalidParameter: Equatable {
    public static func == (lhs: TCIvldError.InvalidParameter, rhs: TCIvldError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIvldError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIvldError.InvalidParameter {
    /// - Returns: ``TCIvldError`` that holds the same error and context.
    public func toIvldError() -> TCIvldError {
        guard let code = TCIvldError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIvldError(code, context: self.context)
    }
}

extension TCIvldError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
