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

extension TCPrivatednsError {
    public struct FailedOperation: TCPrivatednsErrorType {
        enum Code: String {
            case bindZoneVpcFailed = "FailedOperation.BindZoneVpcFailed"
            case createRecordFailed = "FailedOperation.CreateRecordFailed"
            case createZoneFailed = "FailedOperation.CreateZoneFailed"
            case dataError = "FailedOperation.DataError"
            case deleteLastBindVpcRecordFailed = "FailedOperation.DeleteLastBindVpcRecordFailed"
            case deleteRecordFailed = "FailedOperation.DeleteRecordFailed"
            case deleteZoneFailed = "FailedOperation.DeleteZoneFailed"
            case modifyRecordFailed = "FailedOperation.ModifyRecordFailed"
            case modifyZoneFailed = "FailedOperation.ModifyZoneFailed"
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

        /// 私有域关联VPC失败。
        public static var bindZoneVpcFailed: FailedOperation {
            FailedOperation(.bindZoneVpcFailed)
        }

        /// 记录创建失败。
        public static var createRecordFailed: FailedOperation {
            FailedOperation(.createRecordFailed)
        }

        /// 私有域创建失败。
        public static var createZoneFailed: FailedOperation {
            FailedOperation(.createZoneFailed)
        }

        /// 数据异常，联系后台处理。
        public static var dataError: FailedOperation {
            FailedOperation(.dataError)
        }

        /// 当前私有域已关联 VPC，如需清空解析记录请先解除 VPC 关联。
        public static var deleteLastBindVpcRecordFailed: FailedOperation {
            FailedOperation(.deleteLastBindVpcRecordFailed)
        }

        /// 其他原因导致删除失败，可能需要联系后台帮忙处理
        public static var deleteRecordFailed: FailedOperation {
            FailedOperation(.deleteRecordFailed)
        }

        /// 解析域删除失败。
        public static var deleteZoneFailed: FailedOperation {
            FailedOperation(.deleteZoneFailed)
        }

        /// 记录修改失败。
        public static var modifyRecordFailed: FailedOperation {
            FailedOperation(.modifyRecordFailed)
        }

        /// 私有域修改失败。
        public static var modifyZoneFailed: FailedOperation {
            FailedOperation(.modifyZoneFailed)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asPrivatednsError() -> TCPrivatednsError {
            let code: TCPrivatednsError.Code
            switch self.error {
            case .bindZoneVpcFailed:
                code = .failedOperation_BindZoneVpcFailed
            case .createRecordFailed:
                code = .failedOperation_CreateRecordFailed
            case .createZoneFailed:
                code = .failedOperation_CreateZoneFailed
            case .dataError:
                code = .failedOperation_DataError
            case .deleteLastBindVpcRecordFailed:
                code = .failedOperation_DeleteLastBindVpcRecordFailed
            case .deleteRecordFailed:
                code = .failedOperation_DeleteRecordFailed
            case .deleteZoneFailed:
                code = .failedOperation_DeleteZoneFailed
            case .modifyRecordFailed:
                code = .failedOperation_ModifyRecordFailed
            case .modifyZoneFailed:
                code = .failedOperation_ModifyZoneFailed
            case .other:
                code = .failedOperation
            }
            return TCPrivatednsError(code, context: self.context)
        }
    }
}
