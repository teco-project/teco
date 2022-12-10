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

extension Cwp {
    /// 授权批量绑定
    ///
    /// 设置中心-授权管理 对某个授权批量绑定机器
    @inlinable
    public func modifyLicenseBinds(_ input: ModifyLicenseBindsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLicenseBindsResponse > {
        self.client.execute(action: "ModifyLicenseBinds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 授权批量绑定
    ///
    /// 设置中心-授权管理 对某个授权批量绑定机器
    @inlinable
    public func modifyLicenseBinds(_ input: ModifyLicenseBindsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLicenseBindsResponse {
        try await self.client.execute(action: "ModifyLicenseBinds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyLicenseBinds请求参数结构体
    public struct ModifyLicenseBindsRequest: TCRequestModel {
        /// 资源ID
        public let resourceId: String
        
        /// 授权类型
        public let licenseType: UInt64
        
        /// 是否全部机器(当全部机器数大于当前订单可用授权数时,多余机器会被跳过)
        public let isAll: Bool?
        
        /// 需要绑定的机器quuid列表, 当IsAll = false 时必填,反之忽略该参数. 最大长度=2000
        public let quuidList: [String]?
        
        public init (resourceId: String, licenseType: UInt64, isAll: Bool?, quuidList: [String]?) {
            self.resourceId = resourceId
            self.licenseType = licenseType
            self.isAll = isAll
            self.quuidList = quuidList
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case licenseType = "LicenseType"
            case isAll = "IsAll"
            case quuidList = "QuuidList"
        }
    }
    
    /// ModifyLicenseBinds返回参数结构体
    public struct ModifyLicenseBindsResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}
