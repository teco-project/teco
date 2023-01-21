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

extension TCKmsError {
    public struct InvalidParameterValue: TCKmsErrorType {
        enum Code: String {
            case aliasAlreadyExists = "InvalidParameterValue.AliasAlreadyExists"
            case duplicatedKeyId = "InvalidParameterValue.DuplicatedKeyId"
            case invalidAlias = "InvalidParameterValue.InvalidAlias"
            case invalidCiphertext = "InvalidParameterValue.InvalidCiphertext"
            case invalidHsmClusterId = "InvalidParameterValue.InvalidHsmClusterId"
            case invalidKeyId = "InvalidParameterValue.InvalidKeyId"
            case invalidKeyUsage = "InvalidParameterValue.InvalidKeyUsage"
            case invalidPlaintext = "InvalidParameterValue.InvalidPlaintext"
            case invalidType = "InvalidParameterValue.InvalidType"
            case materialNotMatch = "InvalidParameterValue.MaterialNotMatch"
            case tagKeysDuplicated = "InvalidParameterValue.TagKeysDuplicated"
            case tagsNotExisted = "InvalidParameterValue.TagsNotExisted"
            case other = "InvalidParameterValue"
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

        /// 别名已经存在。
        public static var aliasAlreadyExists: InvalidParameterValue {
            InvalidParameterValue(.aliasAlreadyExists)
        }

        /// KeyId重复。
        public static var duplicatedKeyId: InvalidParameterValue {
            InvalidParameterValue(.duplicatedKeyId)
        }

        /// 别名格式错误。
        public static var invalidAlias: InvalidParameterValue {
            InvalidParameterValue(.invalidAlias)
        }

        /// 密文格式错误。
        public static var invalidCiphertext: InvalidParameterValue {
            InvalidParameterValue(.invalidCiphertext)
        }

        /// 无效的 HSM 集群 ID。
        public static var invalidHsmClusterId: InvalidParameterValue {
            InvalidParameterValue(.invalidHsmClusterId)
        }

        /// KeyId不合法。
        public static var invalidKeyId: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyId)
        }

        /// KeyUsage参数错误。
        public static var invalidKeyUsage: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyUsage)
        }

        /// Plaintext不合法。
        public static var invalidPlaintext: InvalidParameterValue {
            InvalidParameterValue(.invalidPlaintext)
        }

        /// Type参数错误。
        public static var invalidType: InvalidParameterValue {
            InvalidParameterValue(.invalidType)
        }

        /// 导入的密钥材料和历史导入不同。
        public static var materialNotMatch: InvalidParameterValue {
            InvalidParameterValue(.materialNotMatch)
        }

        /// 标签键重复。
        public static var tagKeysDuplicated: InvalidParameterValue {
            InvalidParameterValue(.tagKeysDuplicated)
        }

        /// 标签键或标签值不存在。
        public static var tagsNotExisted: InvalidParameterValue {
            InvalidParameterValue(.tagsNotExisted)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asKmsError() -> TCKmsError {
            let code: TCKmsError.Code
            switch self.error {
            case .aliasAlreadyExists:
                code = .invalidParameterValue_AliasAlreadyExists
            case .duplicatedKeyId:
                code = .invalidParameterValue_DuplicatedKeyId
            case .invalidAlias:
                code = .invalidParameterValue_InvalidAlias
            case .invalidCiphertext:
                code = .invalidParameterValue_InvalidCiphertext
            case .invalidHsmClusterId:
                code = .invalidParameterValue_InvalidHsmClusterId
            case .invalidKeyId:
                code = .invalidParameterValue_InvalidKeyId
            case .invalidKeyUsage:
                code = .invalidParameterValue_InvalidKeyUsage
            case .invalidPlaintext:
                code = .invalidParameterValue_InvalidPlaintext
            case .invalidType:
                code = .invalidParameterValue_InvalidType
            case .materialNotMatch:
                code = .invalidParameterValue_MaterialNotMatch
            case .tagKeysDuplicated:
                code = .invalidParameterValue_TagKeysDuplicated
            case .tagsNotExisted:
                code = .invalidParameterValue_TagsNotExisted
            case .other:
                code = .invalidParameterValue
            }
            return TCKmsError(code, context: self.context)
        }
    }
}
