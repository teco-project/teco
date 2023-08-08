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

import Logging
import NIOCore
import TecoCore

extension Tcb {
    /// DeleteGatewayVersion请求参数结构体
    public struct DeleteGatewayVersionRequest: TCRequestModel {
        /// 环境id
        public let envId: String

        /// 网关id
        public let gatewayId: String

        /// 版本名
        public let versionName: String

        /// 是否删除服务
        public let isDeleteServer: Bool?

        /// 是否删除镜像
        public let isDeleteImage: Bool?

        /// 是否强制删除
        public let isForce: Bool?

        /// 操作记录
        public let operatorRemark: String?

        public init(envId: String, gatewayId: String, versionName: String, isDeleteServer: Bool? = nil, isDeleteImage: Bool? = nil, isForce: Bool? = nil, operatorRemark: String? = nil) {
            self.envId = envId
            self.gatewayId = gatewayId
            self.versionName = versionName
            self.isDeleteServer = isDeleteServer
            self.isDeleteImage = isDeleteImage
            self.isForce = isForce
            self.operatorRemark = operatorRemark
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayId = "GatewayId"
            case versionName = "VersionName"
            case isDeleteServer = "IsDeleteServer"
            case isDeleteImage = "IsDeleteImage"
            case isForce = "IsForce"
            case operatorRemark = "OperatorRemark"
        }
    }

    /// DeleteGatewayVersion返回参数结构体
    public struct DeleteGatewayVersionResponse: TCResponseModel {
        /// 删除结果
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除网关某版本
    @inlinable
    public func deleteGatewayVersion(_ input: DeleteGatewayVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGatewayVersionResponse> {
        self.client.execute(action: "DeleteGatewayVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除网关某版本
    @inlinable
    public func deleteGatewayVersion(_ input: DeleteGatewayVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGatewayVersionResponse {
        try await self.client.execute(action: "DeleteGatewayVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除网关某版本
    @inlinable
    public func deleteGatewayVersion(envId: String, gatewayId: String, versionName: String, isDeleteServer: Bool? = nil, isDeleteImage: Bool? = nil, isForce: Bool? = nil, operatorRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGatewayVersionResponse> {
        self.deleteGatewayVersion(.init(envId: envId, gatewayId: gatewayId, versionName: versionName, isDeleteServer: isDeleteServer, isDeleteImage: isDeleteImage, isForce: isForce, operatorRemark: operatorRemark), region: region, logger: logger, on: eventLoop)
    }

    /// 删除网关某版本
    @inlinable
    public func deleteGatewayVersion(envId: String, gatewayId: String, versionName: String, isDeleteServer: Bool? = nil, isDeleteImage: Bool? = nil, isForce: Bool? = nil, operatorRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGatewayVersionResponse {
        try await self.deleteGatewayVersion(.init(envId: envId, gatewayId: gatewayId, versionName: versionName, isDeleteServer: isDeleteServer, isDeleteImage: isDeleteImage, isForce: isForce, operatorRemark: operatorRemark), region: region, logger: logger, on: eventLoop)
    }
}