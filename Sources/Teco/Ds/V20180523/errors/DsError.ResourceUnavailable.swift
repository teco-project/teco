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

extension TCDsError {
    public struct ResourceUnavailable: TCDsErrorType {
        enum Code: String {
            case accountUnavailable = "ResourceUnavailable.AccountUnavailable"
            case contractSignerUnavailable = "ResourceUnavailable.ContractSignerUnavailable"
            case downloadSealError = "ResourceUnavailable.DownloadSealError"
            case subplatUnavailable = "ResourceUnavailable.SubplatUnavailable"
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

        /// 账户状态已冻结或已注销。
        public static var accountUnavailable: ResourceUnavailable {
            ResourceUnavailable(.accountUnavailable)
        }

        /// 合同签署人不存在或状态异常，不能进行合同创建操作。
        public static var contractSignerUnavailable: ResourceUnavailable {
            ResourceUnavailable(.contractSignerUnavailable)
        }

        /// 下载签章文件失败，请确保路径正确。
        public static var downloadSealError: ResourceUnavailable {
            ResourceUnavailable(.downloadSealError)
        }

        /// 子平台欠费。
        public static var subplatUnavailable: ResourceUnavailable {
            ResourceUnavailable(.subplatUnavailable)
        }

        public func asDsError() -> TCDsError {
            let code: TCDsError.Code
            switch self.error {
            case .accountUnavailable:
                code = .resourceUnavailable_AccountUnavailable
            case .contractSignerUnavailable:
                code = .resourceUnavailable_ContractSignerUnavailable
            case .downloadSealError:
                code = .resourceUnavailable_DownloadSealError
            case .subplatUnavailable:
                code = .resourceUnavailable_SubplatUnavailable
            }
            return TCDsError(code, context: self.context)
        }
    }
}
