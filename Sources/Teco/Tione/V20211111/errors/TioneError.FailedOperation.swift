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

extension TCTioneError {
    public struct FailedOperation: TCTioneErrorType {
        enum Code: String {
            case apiGatewayQueryFailed = "FailedOperation.ApiGatewayQueryFailed"
            case billingQueryFailed = "FailedOperation.BillingQueryFailed"
            case bindingTagsFailed = "FailedOperation.BindingTagsFailed"
            case callClusterFail = "FailedOperation.CallClusterFail"
            case camFailure = "FailedOperation.CAMFailure"
            case clsServiceNotActived = "FailedOperation.ClsServiceNotActived"
            case clusterQueryFailed = "FailedOperation.ClusterQueryFailed"
            case createJobInstanceFailed = "FailedOperation.CreateJobInstanceFailed"
            case dcCosClientErr = "FailedOperation.DCCosClientErr"
            case dcCreateAsyncTaskError = "FailedOperation.DCCreateAsyncTaskError"
            case dcCreateUserCosClientErr = "FailedOperation.DCCreateUserCosClientErr"
            case dcDataAnnotationRpcErr = "FailedOperation.DCDataAnnotationRpcErr"
            case dcDatarepoRpcErr = "FailedOperation.DCDatarepoRpcErr"
            case dcDatasetExceedLimit = "FailedOperation.DCDatasetExceedLimit"
            case dcDatasetStatusNotReady = "FailedOperation.DCDatasetStatusNotReady"
            case dcGetUserTemporarySecretErr = "FailedOperation.DCGetUserTemporarySecretErr"
            case dcMarshalDataErr = "FailedOperation.DCMarshalDataErr"
            case dcQueryDatasetContentErr = "FailedOperation.DCQueryDatasetContentErr"
            case dcUnmarshalDataErr = "FailedOperation.DCUnmarshalDataErr"
            case dcUnsupportedOperation = "FailedOperation.DCUnsupportedOperation"
            case duplicateName = "FailedOperation.DuplicateName"
            case execDatabaseFail = "FailedOperation.ExecDatabaseFail"
            case execTagFail = "FailedOperation.ExecTagFail"
            case insufficientWhitelistQuota = "FailedOperation.InsufficientWhitelistQuota"
            case invalidUserType = "FailedOperation.InvalidUserType"
            case kmsKeyNotOpen = "FailedOperation.KmsKeyNotOpen"
            case moveModelDirFailed = "FailedOperation.MoveModelDirFailed"
            case noFreeBucket = "FailedOperation.NoFreeBucket"
            case noPermission = "FailedOperation.NoPermission"
            case notAllow = "FailedOperation.NotAllow"
            case processing = "FailedOperation.Processing"
            case queryBindingTagsFailed = "FailedOperation.QueryBindingTagsFailed"
            case queryDatabaseFail = "FailedOperation.QueryDatabaseFail"
            case queryModelsByTagsFailed = "FailedOperation.QueryModelsByTagsFailed"
            case queryPriceFailed = "FailedOperation.QueryPriceFailed"
            case querySpecsFailed = "FailedOperation.QuerySpecsFailed"
            case queryTagFail = "FailedOperation.QueryTagFail"
            case recordNotFound = "FailedOperation.RecordNotFound"
            case repoBindByInstance = "FailedOperation.RepoBindByInstance"
            case stsQueryFailed = "FailedOperation.StsQueryFailed"
            case timedout = "FailedOperation.Timedout"
            case unknownInstanceType = "FailedOperation.UnknownInstanceType"
            case unmarshalData = "FailedOperation.UnmarshalData"
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

        /// API网关访问失败，请重试。
        ///
        /// 请重试或提工单寻求帮助。
        public static var apiGatewayQueryFailed: FailedOperation {
            FailedOperation(.apiGatewayQueryFailed)
        }

        /// 计费模块访问失败。
        public static var billingQueryFailed: FailedOperation {
            FailedOperation(.billingQueryFailed)
        }

        /// 绑定标签失败。
        ///
        /// 请列表页重新编辑。
        public static var bindingTagsFailed: FailedOperation {
            FailedOperation(.bindingTagsFailed)
        }

        /// 调用集群失败。
        ///
        /// 请重试
        public static var callClusterFail: FailedOperation {
            FailedOperation(.callClusterFail)
        }

        /// CAM内部错误。
        ///
        /// 请到CAM确认。
        public static var camFailure: FailedOperation {
            FailedOperation(.camFailure)
        }

        /// 尚未开通CLS日志服务，请开前往开通。
        public static var clsServiceNotActived: FailedOperation {
            FailedOperation(.clsServiceNotActived)
        }

        /// 集群访问失败。
        ///
        /// 请稍后重试或提工单询问小助手
        public static var clusterQueryFailed: FailedOperation {
            FailedOperation(.clusterQueryFailed)
        }

        /// 启动实例失败。
        ///
        /// 请稍后重试。
        public static var createJobInstanceFailed: FailedOperation {
            FailedOperation(.createJobInstanceFailed)
        }

        /// cos client 内部错误。
        public static var dcCosClientErr: FailedOperation {
            FailedOperation(.dcCosClientErr)
        }

        /// 创建内部异步任务失败。
        public static var dcCreateAsyncTaskError: FailedOperation {
            FailedOperation(.dcCreateAsyncTaskError)
        }

        /// 创建cos client 失败。
        public static var dcCreateUserCosClientErr: FailedOperation {
            FailedOperation(.dcCreateUserCosClientErr)
        }

        /// 数据标注 rpc 内部错误。
        public static var dcDataAnnotationRpcErr: FailedOperation {
            FailedOperation(.dcDataAnnotationRpcErr)
        }

        /// 数据仓库 rpc 内部错误。
        public static var dcDatarepoRpcErr: FailedOperation {
            FailedOperation(.dcDatarepoRpcErr)
        }

        /// 数据集操作超过上限。
        public static var dcDatasetExceedLimit: FailedOperation {
            FailedOperation(.dcDatasetExceedLimit)
        }

        /// 数据集状态未恢复。
        public static var dcDatasetStatusNotReady: FailedOperation {
            FailedOperation(.dcDatasetStatusNotReady)
        }

        /// 获取用户临时秘钥失败。
        public static var dcGetUserTemporarySecretErr: FailedOperation {
            FailedOperation(.dcGetUserTemporarySecretErr)
        }

        /// 数据序列化错误。
        public static var dcMarshalDataErr: FailedOperation {
            FailedOperation(.dcMarshalDataErr)
        }

        /// 数据集获取文件内容异常。
        public static var dcQueryDatasetContentErr: FailedOperation {
            FailedOperation(.dcQueryDatasetContentErr)
        }

        /// 数据反序列化错误。
        public static var dcUnmarshalDataErr: FailedOperation {
            FailedOperation(.dcUnmarshalDataErr)
        }

        /// 数据集操作不支持。
        public static var dcUnsupportedOperation: FailedOperation {
            FailedOperation(.dcUnsupportedOperation)
        }

        /// 名称重复。
        public static var duplicateName: FailedOperation {
            FailedOperation(.duplicateName)
        }

        /// 数据库执行错误。
        public static var execDatabaseFail: FailedOperation {
            FailedOperation(.execDatabaseFail)
        }

        /// 标签操作失败。
        ///
        /// 请重试
        public static var execTagFail: FailedOperation {
            FailedOperation(.execTagFail)
        }

        /// 白名单免费配额不足。
        public static var insufficientWhitelistQuota: FailedOperation {
            FailedOperation(.insufficientWhitelistQuota)
        }

        /// 操作失败，用户类型异常。
        public static var invalidUserType: FailedOperation {
            FailedOperation(.invalidUserType)
        }

        /// 密钥管理系统服务未开通，请先开通腾讯云密钥管理系统服务。
        public static var kmsKeyNotOpen: FailedOperation {
            FailedOperation(.kmsKeyNotOpen)
        }

        /// 移动模型目录失败。
        ///
        /// 请到cos确认。
        public static var moveModelDirFailed: FailedOperation {
            FailedOperation(.moveModelDirFailed)
        }

        /// 没有空闲免费桶。
        public static var noFreeBucket: FailedOperation {
            FailedOperation(.noFreeBucket)
        }

        /// 没有权限。
        public static var noPermission: FailedOperation {
            FailedOperation(.noPermission)
        }

        /// 操作不允许。
        public static var notAllow: FailedOperation {
            FailedOperation(.notAllow)
        }

        /// 请求正在处理中，请稍候再试。
        public static var processing: FailedOperation {
            FailedOperation(.processing)
        }

        /// 查询资源标签失败。
        ///
        /// 请到标签中心确认。
        public static var queryBindingTagsFailed: FailedOperation {
            FailedOperation(.queryBindingTagsFailed)
        }

        /// 数据库查询错误。
        public static var queryDatabaseFail: FailedOperation {
            FailedOperation(.queryDatabaseFail)
        }

        /// 根据标签查询资源失败。
        ///
        /// 请到标签中心确认。
        public static var queryModelsByTagsFailed: FailedOperation {
            FailedOperation(.queryModelsByTagsFailed)
        }

        /// 查询计费价格失败。
        ///
        /// 请稍后重试。
        public static var queryPriceFailed: FailedOperation {
            FailedOperation(.queryPriceFailed)
        }

        /// 查询计费项失败。
        public static var querySpecsFailed: FailedOperation {
            FailedOperation(.querySpecsFailed)
        }

        /// 请重试
        public static var queryTagFail: FailedOperation {
            FailedOperation(.queryTagFail)
        }

        /// 记录不存在。
        ///
        /// 确认传参是否有问题
        public static var recordNotFound: FailedOperation {
            FailedOperation(.recordNotFound)
        }

        /// 存储库有绑定的实例，请先删除绑定的实例。
        public static var repoBindByInstance: FailedOperation {
            FailedOperation(.repoBindByInstance)
        }

        /// 密钥服务访问失败，请重试。
        public static var stsQueryFailed: FailedOperation {
            FailedOperation(.stsQueryFailed)
        }

        /// 实例启动失败。
        public static var timedout: FailedOperation {
            FailedOperation(.timedout)
        }

        /// 未知的实例规格。
        ///
        /// 请查看规格文档，填写正确的实例规格
        public static var unknownInstanceType: FailedOperation {
            FailedOperation(.unknownInstanceType)
        }

        /// 数据解析失败。
        public static var unmarshalData: FailedOperation {
            FailedOperation(.unmarshalData)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTioneError() -> TCTioneError {
            let code: TCTioneError.Code
            switch self.error {
            case .apiGatewayQueryFailed:
                code = .failedOperation_ApiGatewayQueryFailed
            case .billingQueryFailed:
                code = .failedOperation_BillingQueryFailed
            case .bindingTagsFailed:
                code = .failedOperation_BindingTagsFailed
            case .callClusterFail:
                code = .failedOperation_CallClusterFail
            case .camFailure:
                code = .failedOperation_CAMFailure
            case .clsServiceNotActived:
                code = .failedOperation_ClsServiceNotActived
            case .clusterQueryFailed:
                code = .failedOperation_ClusterQueryFailed
            case .createJobInstanceFailed:
                code = .failedOperation_CreateJobInstanceFailed
            case .dcCosClientErr:
                code = .failedOperation_DCCosClientErr
            case .dcCreateAsyncTaskError:
                code = .failedOperation_DCCreateAsyncTaskError
            case .dcCreateUserCosClientErr:
                code = .failedOperation_DCCreateUserCosClientErr
            case .dcDataAnnotationRpcErr:
                code = .failedOperation_DCDataAnnotationRpcErr
            case .dcDatarepoRpcErr:
                code = .failedOperation_DCDatarepoRpcErr
            case .dcDatasetExceedLimit:
                code = .failedOperation_DCDatasetExceedLimit
            case .dcDatasetStatusNotReady:
                code = .failedOperation_DCDatasetStatusNotReady
            case .dcGetUserTemporarySecretErr:
                code = .failedOperation_DCGetUserTemporarySecretErr
            case .dcMarshalDataErr:
                code = .failedOperation_DCMarshalDataErr
            case .dcQueryDatasetContentErr:
                code = .failedOperation_DCQueryDatasetContentErr
            case .dcUnmarshalDataErr:
                code = .failedOperation_DCUnmarshalDataErr
            case .dcUnsupportedOperation:
                code = .failedOperation_DCUnsupportedOperation
            case .duplicateName:
                code = .failedOperation_DuplicateName
            case .execDatabaseFail:
                code = .failedOperation_ExecDatabaseFail
            case .execTagFail:
                code = .failedOperation_ExecTagFail
            case .insufficientWhitelistQuota:
                code = .failedOperation_InsufficientWhitelistQuota
            case .invalidUserType:
                code = .failedOperation_InvalidUserType
            case .kmsKeyNotOpen:
                code = .failedOperation_KmsKeyNotOpen
            case .moveModelDirFailed:
                code = .failedOperation_MoveModelDirFailed
            case .noFreeBucket:
                code = .failedOperation_NoFreeBucket
            case .noPermission:
                code = .failedOperation_NoPermission
            case .notAllow:
                code = .failedOperation_NotAllow
            case .processing:
                code = .failedOperation_Processing
            case .queryBindingTagsFailed:
                code = .failedOperation_QueryBindingTagsFailed
            case .queryDatabaseFail:
                code = .failedOperation_QueryDatabaseFail
            case .queryModelsByTagsFailed:
                code = .failedOperation_QueryModelsByTagsFailed
            case .queryPriceFailed:
                code = .failedOperation_QueryPriceFailed
            case .querySpecsFailed:
                code = .failedOperation_QuerySpecsFailed
            case .queryTagFail:
                code = .failedOperation_QueryTagFail
            case .recordNotFound:
                code = .failedOperation_RecordNotFound
            case .repoBindByInstance:
                code = .failedOperation_RepoBindByInstance
            case .stsQueryFailed:
                code = .failedOperation_StsQueryFailed
            case .timedout:
                code = .failedOperation_Timedout
            case .unknownInstanceType:
                code = .failedOperation_UnknownInstanceType
            case .unmarshalData:
                code = .failedOperation_UnmarshalData
            case .other:
                code = .failedOperation
            }
            return TCTioneError(code, context: self.context)
        }
    }
}
