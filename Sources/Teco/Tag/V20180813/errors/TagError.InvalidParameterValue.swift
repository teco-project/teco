//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

extension TCTagError {
    public struct InvalidParameterValue: TCTagErrorType {
        enum Code: String {
            case deleteTagsParamError = "InvalidParameterValue.DeleteTagsParamError"
            case offsetInvalid = "InvalidParameterValue.OffsetInvalid"
            case regionInvalid = "InvalidParameterValue.RegionInvalid"
            case reservedTagKey = "InvalidParameterValue.ReservedTagKey"
            case resourceDescriptionError = "InvalidParameterValue.ResourceDescriptionError"
            case resourceIdInvalid = "InvalidParameterValue.ResourceIdInvalid"
            case resourcePrefixInvalid = "InvalidParameterValue.ResourcePrefixInvalid"
            case serviceTypeInvalid = "InvalidParameterValue.ServiceTypeInvalid"
            case tagFilters = "InvalidParameterValue.TagFilters"
            case tagFiltersLengthExceeded = "InvalidParameterValue.TagFiltersLengthExceeded"
            case tagKeyCharacterIllegal = "InvalidParameterValue.TagKeyCharacterIllegal"
            case tagKeyDuplicate = "InvalidParameterValue.TagKeyDuplicate"
            case tagKeyEmpty = "InvalidParameterValue.TagKeyEmpty"
            case tagKeyLengthExceeded = "InvalidParameterValue.TagKeyLengthExceeded"
            case tagValueCharacterIllegal = "InvalidParameterValue.TagValueCharacterIllegal"
            case tagValueEmpty = "InvalidParameterValue.TagValueEmpty"
            case tagValueLengthExceeded = "InvalidParameterValue.TagValueLengthExceeded"
            case uinInvalid = "InvalidParameterValue.UinInvalid"
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

        /// DeleteTags中不能包含ReplaceTags或AddTags中元素。
        public static var deleteTagsParamError: InvalidParameterValue {
            InvalidParameterValue(.deleteTagsParamError)
        }

        /// offset error。
        public static var offsetInvalid: InvalidParameterValue {
            InvalidParameterValue(.offsetInvalid)
        }

        /// 地域错误。
        public static var regionInvalid: InvalidParameterValue {
            InvalidParameterValue(.regionInvalid)
        }

        /// 系统预留标签键 qcloud、tencent和project 禁止创建。
        public static var reservedTagKey: InvalidParameterValue {
            InvalidParameterValue(.reservedTagKey)
        }

        /// 资源描述错误。
        public static var resourceDescriptionError: InvalidParameterValue {
            InvalidParameterValue(.resourceDescriptionError)
        }

        /// 资源Id错误。
        public static var resourceIdInvalid: InvalidParameterValue {
            InvalidParameterValue(.resourceIdInvalid)
        }

        /// 资源前缀错误。
        public static var resourcePrefixInvalid: InvalidParameterValue {
            InvalidParameterValue(.resourcePrefixInvalid)
        }

        /// 业务类型错误。
        public static var serviceTypeInvalid: InvalidParameterValue {
            InvalidParameterValue(.serviceTypeInvalid)
        }

        /// TagFilters参数错误。
        public static var tagFilters: InvalidParameterValue {
            InvalidParameterValue(.tagFilters)
        }

        /// 过滤标签键对应标签值达到上限数 6。
        public static var tagFiltersLengthExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagFiltersLengthExceeded)
        }

        /// 标签键包含非法字符。
        public static var tagKeyCharacterIllegal: InvalidParameterValue {
            InvalidParameterValue(.tagKeyCharacterIllegal)
        }

        /// TagList中存在重复的TagKey。
        public static var tagKeyDuplicate: InvalidParameterValue {
            InvalidParameterValue(.tagKeyDuplicate)
        }

        /// 标签键不能为空值。
        public static var tagKeyEmpty: InvalidParameterValue {
            InvalidParameterValue(.tagKeyEmpty)
        }

        /// 标签键长度超过限制。
        public static var tagKeyLengthExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagKeyLengthExceeded)
        }

        /// 标签值包含非法字符。
        public static var tagValueCharacterIllegal: InvalidParameterValue {
            InvalidParameterValue(.tagValueCharacterIllegal)
        }

        /// 标签值不能为空值。
        public static var tagValueEmpty: InvalidParameterValue {
            InvalidParameterValue(.tagValueEmpty)
        }

        /// 标签值长度超过限制。
        public static var tagValueLengthExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagValueLengthExceeded)
        }

        /// Uin参数不合法。
        public static var uinInvalid: InvalidParameterValue {
            InvalidParameterValue(.uinInvalid)
        }

        public func asTagError() -> TCTagError {
            let code: TCTagError.Code
            switch self.error {
            case .deleteTagsParamError:
                code = .invalidParameterValue_DeleteTagsParamError
            case .offsetInvalid:
                code = .invalidParameterValue_OffsetInvalid
            case .regionInvalid:
                code = .invalidParameterValue_RegionInvalid
            case .reservedTagKey:
                code = .invalidParameterValue_ReservedTagKey
            case .resourceDescriptionError:
                code = .invalidParameterValue_ResourceDescriptionError
            case .resourceIdInvalid:
                code = .invalidParameterValue_ResourceIdInvalid
            case .resourcePrefixInvalid:
                code = .invalidParameterValue_ResourcePrefixInvalid
            case .serviceTypeInvalid:
                code = .invalidParameterValue_ServiceTypeInvalid
            case .tagFilters:
                code = .invalidParameterValue_TagFilters
            case .tagFiltersLengthExceeded:
                code = .invalidParameterValue_TagFiltersLengthExceeded
            case .tagKeyCharacterIllegal:
                code = .invalidParameterValue_TagKeyCharacterIllegal
            case .tagKeyDuplicate:
                code = .invalidParameterValue_TagKeyDuplicate
            case .tagKeyEmpty:
                code = .invalidParameterValue_TagKeyEmpty
            case .tagKeyLengthExceeded:
                code = .invalidParameterValue_TagKeyLengthExceeded
            case .tagValueCharacterIllegal:
                code = .invalidParameterValue_TagValueCharacterIllegal
            case .tagValueEmpty:
                code = .invalidParameterValue_TagValueEmpty
            case .tagValueLengthExceeded:
                code = .invalidParameterValue_TagValueLengthExceeded
            case .uinInvalid:
                code = .invalidParameterValue_UinInvalid
            }
            return TCTagError(code, context: self.context)
        }
    }
}
