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

extension TCDcdbError {
    public struct InternalError: TCDcdbErrorType {
        enum Code: String {
            case camAuthFailed = "InternalError.CamAuthFailed"
            case checkVipStatusFailed = "InternalError.CheckVipStatusFailed"
            case cosConfiguration = "InternalError.CosConfiguration"
            case cosSignUrl = "InternalError.CosSignUrl"
            case createFlowFailed = "InternalError.CreateFlowFailed"
            case dbOperationFailed = "InternalError.DbOperationFailed"
            case dbRowsAffectedError = "InternalError.DBRowsAffectedError"
            case fenceError = "InternalError.FenceError"
            case getDbConfigFailed = "InternalError.GetDbConfigFailed"
            case getDbListFailed = "InternalError.GetDbListFailed"
            case getDbObjectFailed = "InternalError.GetDbObjectFailed"
            case getInstanceDetailFailed = "InternalError.GetInstanceDetailFailed"
            case getInstanceInfoFailed = "InternalError.GetInstanceInfoFailed"
            case getRightFailed = "InternalError.GetRightFailed"
            case getSecurityGroupDetailFailed = "InternalError.GetSecurityGroupDetailFailed"
            case getSlowLogFailed = "InternalError.GetSlowLogFailed"
            case getSubnetFailed = "InternalError.GetSubnetFailed"
            case getTableInfoFailed = "InternalError.GetTableInfoFailed"
            case getUserListFailed = "InternalError.GetUserListFailed"
            case getUserSGCountFailed = "InternalError.GetUserSGCountFailed"
            case getUsgQuotaError = "InternalError.GetUsgQuotaError"
            case getVpcFailed = "InternalError.GetVpcFailed"
            case innerSystemError = "InternalError.InnerSystemError"
            case insertFail = "InternalError.InsertFail"
            case instanceOperatePermissionError = "InternalError.InstanceOperatePermissionError"
            case instanceSGOverLimitError = "InternalError.InstanceSGOverLimitError"
            case listInstanceRespResourceCountNotMatchError = "InternalError.ListInstanceRespResourceCountNotMatchError"
            case listInstancesError = "InternalError.ListInstancesError"
            case listProjectFailed = "InternalError.ListProjectFailed"
            case operateDatabaseFailed = "InternalError.OperateDatabaseFailed"
            case queryDatabaseFailed = "InternalError.QueryDatabaseFailed"
            case queryOrderFailed = "InternalError.QueryOrderFailed"
            case queryPriceFailed = "InternalError.QueryPriceFailed"
            case readDatabaseFailed = "InternalError.ReadDatabaseFailed"
            case retreateTime = "InternalError.RetreateTime"
            case routeNotFound = "InternalError.RouteNotFound"
            case setSvcLocationFailed = "InternalError.SetSvcLocationFailed"
            case updateDatabaseFailed = "InternalError.UpdateDatabaseFailed"
            case vpcOperationFailed = "InternalError.VpcOperationFailed"
            case wanServiceFailed = "InternalError.WanServiceFailed"
            case other = "InternalError"
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

        /// CAM鉴权请求失败。
        public static var camAuthFailed: InternalError {
            InternalError(.camAuthFailed)
        }

        /// 校验VIP状态失败。
        public static var checkVipStatusFailed: InternalError {
            InternalError(.checkVipStatusFailed)
        }

        /// COS地址配置错误。
        public static var cosConfiguration: InternalError {
            InternalError(.cosConfiguration)
        }

        /// 备份文件签名失败。
        public static var cosSignUrl: InternalError {
            InternalError(.cosSignUrl)
        }

        public static var createFlowFailed: InternalError {
            InternalError(.createFlowFailed)
        }

        /// 查询数据库失败。
        public static var dbOperationFailed: InternalError {
            InternalError(.dbOperationFailed)
        }

        /// DB影响行数为0错误。
        public static var dbRowsAffectedError: InternalError {
            InternalError(.dbRowsAffectedError)
        }

        /// 查询独享集群信息失败。
        public static var fenceError: InternalError {
            InternalError(.fenceError)
        }

        /// 获取数据库实例参数失败。
        public static var getDbConfigFailed: InternalError {
            InternalError(.getDbConfigFailed)
        }

        /// 获取数据库列表失败。
        public static var getDbListFailed: InternalError {
            InternalError(.getDbListFailed)
        }

        /// 获取数据库对象失败。
        public static var getDbObjectFailed: InternalError {
            InternalError(.getDbObjectFailed)
        }

        /// 获取实例详情失败。
        public static var getInstanceDetailFailed: InternalError {
            InternalError(.getInstanceDetailFailed)
        }

        /// 获取实例信息失败。
        public static var getInstanceInfoFailed: InternalError {
            InternalError(.getInstanceInfoFailed)
        }

        /// 获取账号当前权限失败。
        public static var getRightFailed: InternalError {
            InternalError(.getRightFailed)
        }

        /// 拉圈安全组详情失败。
        public static var getSecurityGroupDetailFailed: InternalError {
            InternalError(.getSecurityGroupDetailFailed)
        }

        /// 查询慢日志DB失败。
        public static var getSlowLogFailed: InternalError {
            InternalError(.getSlowLogFailed)
        }

        /// 查询虚拟私有网络子网信息失败。
        public static var getSubnetFailed: InternalError {
            InternalError(.getSubnetFailed)
        }

        /// 获取表信息失败。
        public static var getTableInfoFailed: InternalError {
            InternalError(.getTableInfoFailed)
        }

        /// 获取账号列表失败。
        public static var getUserListFailed: InternalError {
            InternalError(.getUserListFailed)
        }

        public static var getUserSGCountFailed: InternalError {
            InternalError(.getUserSGCountFailed)
        }

        /// 获取用户安全组配额失败。
        public static var getUsgQuotaError: InternalError {
            InternalError(.getUsgQuotaError)
        }

        /// 查询虚拟私有网络信息失败。
        public static var getVpcFailed: InternalError {
            InternalError(.getVpcFailed)
        }

        /// 内部系统错误。
        public static var innerSystemError: InternalError {
            InternalError(.innerSystemError)
        }

        /// 数据库插入失败。
        public static var insertFail: InternalError {
            InternalError(.insertFail)
        }

        /// 用户对当前实例无操作权限。
        public static var instanceOperatePermissionError: InternalError {
            InternalError(.instanceOperatePermissionError)
        }

        /// 单实例绑定安全组数量超限。
        public static var instanceSGOverLimitError: InternalError {
            InternalError(.instanceSGOverLimitError)
        }

        /// 查询实例时返回的资源数量与请求不匹配。
        public static var listInstanceRespResourceCountNotMatchError: InternalError {
            InternalError(.listInstanceRespResourceCountNotMatchError)
        }

        /// 查询实例错误。
        public static var listInstancesError: InternalError {
            InternalError(.listInstancesError)
        }

        /// 拉取项目列表失败。
        public static var listProjectFailed: InternalError {
            InternalError(.listProjectFailed)
        }

        /// 数据库操作失败。
        public static var operateDatabaseFailed: InternalError {
            InternalError(.operateDatabaseFailed)
        }

        /// 操作读DB数据错误。
        public static var queryDatabaseFailed: InternalError {
            InternalError(.queryDatabaseFailed)
        }

        /// 查询订单信息失败。
        public static var queryOrderFailed: InternalError {
            InternalError(.queryOrderFailed)
        }

        /// 查询价格失败。
        public static var queryPriceFailed: InternalError {
            InternalError(.queryPriceFailed)
        }

        /// 操作读DB数据错误。
        public static var readDatabaseFailed: InternalError {
            InternalError(.readDatabaseFailed)
        }

        /// 回档的时间不合法。
        public static var retreateTime: InternalError {
            InternalError(.retreateTime)
        }

        /// 路由未发现。
        public static var routeNotFound: InternalError {
            InternalError(.routeNotFound)
        }

        /// 资源安全组策略下发错误。
        public static var setSvcLocationFailed: InternalError {
            InternalError(.setSvcLocationFailed)
        }

        /// 数据库更新失败。
        public static var updateDatabaseFailed: InternalError {
            InternalError(.updateDatabaseFailed)
        }

        /// VPC操作失败。
        public static var vpcOperationFailed: InternalError {
            InternalError(.vpcOperationFailed)
        }

        /// 外网操作失败。
        public static var wanServiceFailed: InternalError {
            InternalError(.wanServiceFailed)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asDcdbError() -> TCDcdbError {
            let code: TCDcdbError.Code
            switch self.error {
            case .camAuthFailed:
                code = .internalError_CamAuthFailed
            case .checkVipStatusFailed:
                code = .internalError_CheckVipStatusFailed
            case .cosConfiguration:
                code = .internalError_CosConfiguration
            case .cosSignUrl:
                code = .internalError_CosSignUrl
            case .createFlowFailed:
                code = .internalError_CreateFlowFailed
            case .dbOperationFailed:
                code = .internalError_DbOperationFailed
            case .dbRowsAffectedError:
                code = .internalError_DBRowsAffectedError
            case .fenceError:
                code = .internalError_FenceError
            case .getDbConfigFailed:
                code = .internalError_GetDbConfigFailed
            case .getDbListFailed:
                code = .internalError_GetDbListFailed
            case .getDbObjectFailed:
                code = .internalError_GetDbObjectFailed
            case .getInstanceDetailFailed:
                code = .internalError_GetInstanceDetailFailed
            case .getInstanceInfoFailed:
                code = .internalError_GetInstanceInfoFailed
            case .getRightFailed:
                code = .internalError_GetRightFailed
            case .getSecurityGroupDetailFailed:
                code = .internalError_GetSecurityGroupDetailFailed
            case .getSlowLogFailed:
                code = .internalError_GetSlowLogFailed
            case .getSubnetFailed:
                code = .internalError_GetSubnetFailed
            case .getTableInfoFailed:
                code = .internalError_GetTableInfoFailed
            case .getUserListFailed:
                code = .internalError_GetUserListFailed
            case .getUserSGCountFailed:
                code = .internalError_GetUserSGCountFailed
            case .getUsgQuotaError:
                code = .internalError_GetUsgQuotaError
            case .getVpcFailed:
                code = .internalError_GetVpcFailed
            case .innerSystemError:
                code = .internalError_InnerSystemError
            case .insertFail:
                code = .internalError_InsertFail
            case .instanceOperatePermissionError:
                code = .internalError_InstanceOperatePermissionError
            case .instanceSGOverLimitError:
                code = .internalError_InstanceSGOverLimitError
            case .listInstanceRespResourceCountNotMatchError:
                code = .internalError_ListInstanceRespResourceCountNotMatchError
            case .listInstancesError:
                code = .internalError_ListInstancesError
            case .listProjectFailed:
                code = .internalError_ListProjectFailed
            case .operateDatabaseFailed:
                code = .internalError_OperateDatabaseFailed
            case .queryDatabaseFailed:
                code = .internalError_QueryDatabaseFailed
            case .queryOrderFailed:
                code = .internalError_QueryOrderFailed
            case .queryPriceFailed:
                code = .internalError_QueryPriceFailed
            case .readDatabaseFailed:
                code = .internalError_ReadDatabaseFailed
            case .retreateTime:
                code = .internalError_RetreateTime
            case .routeNotFound:
                code = .internalError_RouteNotFound
            case .setSvcLocationFailed:
                code = .internalError_SetSvcLocationFailed
            case .updateDatabaseFailed:
                code = .internalError_UpdateDatabaseFailed
            case .vpcOperationFailed:
                code = .internalError_VpcOperationFailed
            case .wanServiceFailed:
                code = .internalError_WanServiceFailed
            case .other:
                code = .internalError
            }
            return TCDcdbError(code, context: self.context)
        }
    }
}
