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

extension TCEssbasicError {
    public struct ResourceNotFound: TCEssbasicErrorType {
        enum Code: String {
            case flow = "ResourceNotFound.Flow"
            case other = "ResourceNotFound"
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

        /// 未找到对应流程。
        ///
        /// 请检查流程Id是否存在。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var flow: ResourceNotFound {
            ResourceNotFound(.flow)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .flow: 
                code = .resourceNotFound_Flow
            case .other: 
                code = .resourceNotFound
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
