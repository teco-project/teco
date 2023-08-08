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
    public struct FailedOperation: TCIssErrorType {
        enum Code: String {
            case aiTaskStatusIsOff = "FailedOperation.AITaskStatusIsOff"
            case aiTaskStatusIsOn = "FailedOperation.AITaskStatusIsOn"
            case deviceResponseTimeOut = "FailedOperation.DeviceResponseTimeOut"
            case deviceResultTimeOut = "FailedOperation.DeviceResultTimeOut"
            case noMatchedCname = "FailedOperation.NoMatchedCname"
            case other = "FailedOperation"
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

        public static var aiTaskStatusIsOff: FailedOperation {
            FailedOperation(.aiTaskStatusIsOff)
        }

        public static var aiTaskStatusIsOn: FailedOperation {
            FailedOperation(.aiTaskStatusIsOn)
        }

        public static var deviceResponseTimeOut: FailedOperation {
            FailedOperation(.deviceResponseTimeOut)
        }

        public static var deviceResultTimeOut: FailedOperation {
            FailedOperation(.deviceResultTimeOut)
        }

        public static var noMatchedCname: FailedOperation {
            FailedOperation(.noMatchedCname)
        }

        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asIssError() -> TCIssError {
            let code: TCIssError.Code
            switch self.error {
            case .aiTaskStatusIsOff:
                code = .failedOperation_AITaskStatusIsOff
            case .aiTaskStatusIsOn:
                code = .failedOperation_AITaskStatusIsOn
            case .deviceResponseTimeOut:
                code = .failedOperation_DeviceResponseTimeOut
            case .deviceResultTimeOut:
                code = .failedOperation_DeviceResultTimeOut
            case .noMatchedCname:
                code = .failedOperation_NoMatchedCname
            case .other:
                code = .failedOperation
            }
            return TCIssError(code, context: self.context)
        }
    }
}
