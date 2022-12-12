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

extension TCCatError {
    public struct FailedOperation: TCCatErrorType {
        enum Code: String {
            case dbQueryFailed = "FailedOperation.DbQueryFailed"
            case dbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
            case dbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
            case errPrePaidResourceExpire = "FailedOperation.ErrPrePaidResourceExpire"
            case esQueryError = "FailedOperation.ESQueryError"
            case noValidNodes = "FailedOperation.NoValidNodes"
            case orderOutOfCredit = "FailedOperation.OrderOutOfCredit"
            case preResourceIDFailed = "FailedOperation.PreResourceIDFailed"
            case resourceNotFound = "FailedOperation.ResourceNotFound"
            case sendRequest = "FailedOperation.SendRequest"
            case tagRequiredVerifyFailed = "FailedOperation.TagRequiredVerifyFailed"
            case taskNotRunning = "FailedOperation.TaskNotRunning"
            case taskNotSuspended = "FailedOperation.TaskNotSuspended"
            case taskOperationNotAllow = "FailedOperation.TaskOperationNotAllow"
            case taskTypeNotSame = "FailedOperation.TaskTypeNotSame"
            case trialTaskExceed = "FailedOperation.TrialTaskExceed"
            case unmarshalResponse = "FailedOperation.UnmarshalResponse"
            case userNoQcloudTAGFullAccess = "FailedOperation.UserNoQcloudTAGFullAccess"
            case other = "FailedOperation"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        /// 数据库查询错误。
        public static var dbQueryFailed: FailedOperation {
            FailedOperation(.dbQueryFailed)
        }
        
        /// 数据库创建失败。
        public static var dbRecordCreateFailed: FailedOperation {
            FailedOperation(.dbRecordCreateFailed)
        }
        
        /// 数据库更新失败。
        public static var dbRecordUpdateFailed: FailedOperation {
            FailedOperation(.dbRecordUpdateFailed)
        }
        
        /// 任务绑定的预付费套餐已过期，请续期对应的套餐包。
        public static var errPrePaidResourceExpire: FailedOperation {
            FailedOperation(.errPrePaidResourceExpire)
        }
        
        /// ES查询错误。
        ///
        /// 尝试重新访问该接口，如果无效，尝试缩小时间范围或更换排序的指标。
        public static var esQueryError: FailedOperation {
            FailedOperation(.esQueryError)
        }
        
        /// 无有效节点。
        public static var noValidNodes: FailedOperation {
            FailedOperation(.noValidNodes)
        }
        
        /// 账单欠费。
        public static var orderOutOfCredit: FailedOperation {
            FailedOperation(.orderOutOfCredit)
        }
        
        /// 未查询到此id对应的预付费资源或者此预付费资源已经绑定其他任务，请更换资源id或者删除已经绑定此资源的任务。
        public static var preResourceIDFailed: FailedOperation {
            FailedOperation(.preResourceIDFailed)
        }
        
        /// 资源不存在。
        public static var resourceNotFound: FailedOperation {
            FailedOperation(.resourceNotFound)
        }
        
        public static var sendRequest: FailedOperation {
            FailedOperation(.sendRequest)
        }
        
        /// 需要标签中需要包含 运营产品，运营部门，负责人。
        public static var tagRequiredVerifyFailed: FailedOperation {
            FailedOperation(.tagRequiredVerifyFailed)
        }
        
        /// 任务未运行。
        public static var taskNotRunning: FailedOperation {
            FailedOperation(.taskNotRunning)
        }
        
        /// 任务未暂停。
        public static var taskNotSuspended: FailedOperation {
            FailedOperation(.taskNotSuspended)
        }
        
        /// 任务状态不允许当前操作。
        public static var taskOperationNotAllow: FailedOperation {
            FailedOperation(.taskOperationNotAllow)
        }
        
        /// 批量拨测任务的类型不相同。
        ///
        /// 选择相同拨测类型的一批任务
        public static var taskTypeNotSame: FailedOperation {
            FailedOperation(.taskTypeNotSame)
        }
        
        /// 试用任务量超时。
        public static var trialTaskExceed: FailedOperation {
            FailedOperation(.trialTaskExceed)
        }
        
        /// 检查api调用逻辑
        public static var unmarshalResponse: FailedOperation {
            FailedOperation(.unmarshalResponse)
        }
        
        /// 当前子用户无相关标签写权限，请联系主账号管理员协助授予QcloudTAGFullAccess
        public static var userNoQcloudTAGFullAccess: FailedOperation {
            FailedOperation(.userNoQcloudTAGFullAccess)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
        
        public func asCatError() -> TCCatError {
            let code: TCCatError.Code
            switch self.error {
            case .dbQueryFailed: 
                code = .failedOperation_DbQueryFailed
            case .dbRecordCreateFailed: 
                code = .failedOperation_DbRecordCreateFailed
            case .dbRecordUpdateFailed: 
                code = .failedOperation_DbRecordUpdateFailed
            case .errPrePaidResourceExpire: 
                code = .failedOperation_ErrPrePaidResourceExpire
            case .esQueryError: 
                code = .failedOperation_ESQueryError
            case .noValidNodes: 
                code = .failedOperation_NoValidNodes
            case .orderOutOfCredit: 
                code = .failedOperation_OrderOutOfCredit
            case .preResourceIDFailed: 
                code = .failedOperation_PreResourceIDFailed
            case .resourceNotFound: 
                code = .failedOperation_ResourceNotFound
            case .sendRequest: 
                code = .failedOperation_SendRequest
            case .tagRequiredVerifyFailed: 
                code = .failedOperation_TagRequiredVerifyFailed
            case .taskNotRunning: 
                code = .failedOperation_TaskNotRunning
            case .taskNotSuspended: 
                code = .failedOperation_TaskNotSuspended
            case .taskOperationNotAllow: 
                code = .failedOperation_TaskOperationNotAllow
            case .taskTypeNotSame: 
                code = .failedOperation_TaskTypeNotSame
            case .trialTaskExceed: 
                code = .failedOperation_TrialTaskExceed
            case .unmarshalResponse: 
                code = .failedOperation_UnmarshalResponse
            case .userNoQcloudTAGFullAccess: 
                code = .failedOperation_UserNoQcloudTAGFullAccess
            case .other: 
                code = .failedOperation
            }
            return TCCatError(code, context: self.context)
        }
    }
}
