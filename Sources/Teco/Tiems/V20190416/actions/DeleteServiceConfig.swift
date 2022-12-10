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

extension Tiems {
    /// 删除服务配置
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除服务配置
    @inlinable
    public func deleteServiceConfig(_ input: DeleteServiceConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteServiceConfigResponse > {
        self.client.execute(action: "DeleteServiceConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除服务配置
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除服务配置
    @inlinable
    public func deleteServiceConfig(_ input: DeleteServiceConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceConfigResponse {
        try await self.client.execute(action: "DeleteServiceConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteServiceConfig请求参数结构体
    public struct DeleteServiceConfigRequest: TCRequestModel {
        /// 服务配置Id
        public let serviceConfigId: String?
        
        /// 服务配置名称
        public let serviceConfigName: String?
        
        public init (serviceConfigId: String?, serviceConfigName: String?) {
            self.serviceConfigId = serviceConfigId
            self.serviceConfigName = serviceConfigName
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceConfigId = "ServiceConfigId"
            case serviceConfigName = "ServiceConfigName"
        }
    }
    
    /// DeleteServiceConfig返回参数结构体
    public struct DeleteServiceConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
