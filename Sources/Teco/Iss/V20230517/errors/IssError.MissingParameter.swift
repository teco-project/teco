//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCIssError {
    public struct MissingParameter: TCIssErrorType {
        enum Code: String {
            case emptyTimeSection = "MissingParameter.EmptyTimeSection"
            case missingLifeRuleParam = "MissingParameter.MissingLifeRuleParam"
            case missingRetrieveTaskParam = "MissingParameter.MissingRetrieveTaskParam"
            case missingUpdatedInfo = "MissingParameter.MissingUpdatedInfo"
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

        public static var emptyTimeSection: MissingParameter {
            MissingParameter(.emptyTimeSection)
        }

        public static var missingLifeRuleParam: MissingParameter {
            MissingParameter(.missingLifeRuleParam)
        }

        public static var missingRetrieveTaskParam: MissingParameter {
            MissingParameter(.missingRetrieveTaskParam)
        }

        public static var missingUpdatedInfo: MissingParameter {
            MissingParameter(.missingUpdatedInfo)
        }

        public func asIssError() -> TCIssError {
            let code: TCIssError.Code
            switch self.error {
            case .emptyTimeSection:
                code = .missingParameter_EmptyTimeSection
            case .missingLifeRuleParam:
                code = .missingParameter_MissingLifeRuleParam
            case .missingRetrieveTaskParam:
                code = .missingParameter_MissingRetrieveTaskParam
            case .missingUpdatedInfo:
                code = .missingParameter_MissingUpdatedInfo
            }
            return TCIssError(code, context: self.context)
        }
    }
}
