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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// CreateVpcEndPointService请求参数结构体
    public struct CreateVpcEndPointServiceRequest: TCRequestModel {
        /// VPC实例ID。
        public let vpcId: String

        /// 终端节点服务名称。
        public let endPointServiceName: String

        /// 是否自动接受。
        public let autoAcceptFlag: Bool

        /// 后端服务ID，比如lb-xxx。
        public let serviceInstanceId: String

        /// ~~是否是PassService类型。该字段已废弃，请不要使用该字段。~~
        public let isPassService: Bool?

        /// 挂载的PAAS服务类型，CLB,CDB,CRS，不填默认挂载为CLB。
        public let serviceType: String?

        public init(vpcId: String, endPointServiceName: String, autoAcceptFlag: Bool, serviceInstanceId: String, isPassService: Bool? = nil, serviceType: String? = nil) {
            self.vpcId = vpcId
            self.endPointServiceName = endPointServiceName
            self.autoAcceptFlag = autoAcceptFlag
            self.serviceInstanceId = serviceInstanceId
            self.isPassService = isPassService
            self.serviceType = serviceType
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case endPointServiceName = "EndPointServiceName"
            case autoAcceptFlag = "AutoAcceptFlag"
            case serviceInstanceId = "ServiceInstanceId"
            case isPassService = "IsPassService"
            case serviceType = "ServiceType"
        }
    }

    /// CreateVpcEndPointService返回参数结构体
    public struct CreateVpcEndPointServiceResponse: TCResponseModel {
        /// 终端节点服务对象详细信息。
        public let endPointService: EndPointService

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endPointService = "EndPointService"
            case requestId = "RequestId"
        }
    }

    /// 创建终端节点服务
    ///
    /// 本接口（CreateVpcEndPointService）用于创建终端节点服务。
    @inlinable
    public func createVpcEndPointService(_ input: CreateVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcEndPointServiceResponse> {
        self.client.execute(action: "CreateVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建终端节点服务
    ///
    /// 本接口（CreateVpcEndPointService）用于创建终端节点服务。
    @inlinable
    public func createVpcEndPointService(_ input: CreateVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndPointServiceResponse {
        try await self.client.execute(action: "CreateVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建终端节点服务
    ///
    /// 本接口（CreateVpcEndPointService）用于创建终端节点服务。
    @inlinable
    public func createVpcEndPointService(vpcId: String, endPointServiceName: String, autoAcceptFlag: Bool, serviceInstanceId: String, isPassService: Bool? = nil, serviceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcEndPointServiceResponse> {
        self.createVpcEndPointService(.init(vpcId: vpcId, endPointServiceName: endPointServiceName, autoAcceptFlag: autoAcceptFlag, serviceInstanceId: serviceInstanceId, isPassService: isPassService, serviceType: serviceType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建终端节点服务
    ///
    /// 本接口（CreateVpcEndPointService）用于创建终端节点服务。
    @inlinable
    public func createVpcEndPointService(vpcId: String, endPointServiceName: String, autoAcceptFlag: Bool, serviceInstanceId: String, isPassService: Bool? = nil, serviceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndPointServiceResponse {
        try await self.createVpcEndPointService(.init(vpcId: vpcId, endPointServiceName: endPointServiceName, autoAcceptFlag: autoAcceptFlag, serviceInstanceId: serviceInstanceId, isPassService: isPassService, serviceType: serviceType), region: region, logger: logger, on: eventLoop)
    }
}
