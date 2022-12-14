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

extension TCBatchError {
    public struct UnsupportedOperation: TCBatchErrorType {
        enum Code: String {
            case acceptOtherRequest = "UnsupportedOperation.AcceptOtherRequest"
            case computeEnvAcceptOtherRequest = "UnsupportedOperation.ComputeEnvAcceptOtherRequest"
            case computeEnvOperation = "UnsupportedOperation.ComputeEnvOperation"
            case computeNodeForbidTerminate = "UnsupportedOperation.ComputeNodeForbidTerminate"
            case computeNodeIsTerminating = "UnsupportedOperation.ComputeNodeIsTerminating"
            case instancesNotAllowToAttach = "UnsupportedOperation.InstancesNotAllowToAttach"
            case notEnoughComputeNodesToTerminate = "UnsupportedOperation.NotEnoughComputeNodesToTerminate"
            case terminateOperationWithEnvId = "UnsupportedOperation.TerminateOperationWithEnvId"
            case other = "UnsupportedOperation"
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

        /// ??????????????????????????????????????????
        public static var acceptOtherRequest: UnsupportedOperation {
            UnsupportedOperation(.acceptOtherRequest)
        }

        /// ?????????????????????????????????
        public static var computeEnvAcceptOtherRequest: UnsupportedOperation {
            UnsupportedOperation(.computeEnvAcceptOtherRequest)
        }

        /// ?????????????????????
        public static var computeEnvOperation: UnsupportedOperation {
            UnsupportedOperation(.computeEnvOperation)
        }

        /// ???????????????????????????
        public static var computeNodeForbidTerminate: UnsupportedOperation {
            UnsupportedOperation(.computeNodeForbidTerminate)
        }

        /// ????????????????????????
        public static var computeNodeIsTerminating: UnsupportedOperation {
            UnsupportedOperation(.computeNodeIsTerminating)
        }

        /// ????????????????????????????????????????????????
        public static var instancesNotAllowToAttach: UnsupportedOperation {
            UnsupportedOperation(.instancesNotAllowToAttach)
        }

        /// ???????????????????????????????????????????????????
        public static var notEnoughComputeNodesToTerminate: UnsupportedOperation {
            UnsupportedOperation(.notEnoughComputeNodesToTerminate)
        }

        /// ???????????????????????????????????????????????????
        public static var terminateOperationWithEnvId: UnsupportedOperation {
            UnsupportedOperation(.terminateOperationWithEnvId)
        }

        /// ??????????????????
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asBatchError() -> TCBatchError {
            let code: TCBatchError.Code
            switch self.error {
            case .acceptOtherRequest: 
                code = .unsupportedOperation_AcceptOtherRequest
            case .computeEnvAcceptOtherRequest: 
                code = .unsupportedOperation_ComputeEnvAcceptOtherRequest
            case .computeEnvOperation: 
                code = .unsupportedOperation_ComputeEnvOperation
            case .computeNodeForbidTerminate: 
                code = .unsupportedOperation_ComputeNodeForbidTerminate
            case .computeNodeIsTerminating: 
                code = .unsupportedOperation_ComputeNodeIsTerminating
            case .instancesNotAllowToAttach: 
                code = .unsupportedOperation_InstancesNotAllowToAttach
            case .notEnoughComputeNodesToTerminate: 
                code = .unsupportedOperation_NotEnoughComputeNodesToTerminate
            case .terminateOperationWithEnvId: 
                code = .unsupportedOperation_TerminateOperationWithEnvId
            case .other: 
                code = .unsupportedOperation
            }
            return TCBatchError(code, context: self.context)
        }
    }
}
