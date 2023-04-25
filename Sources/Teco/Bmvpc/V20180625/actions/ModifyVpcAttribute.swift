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

extension Bmvpc {
    /// ModifyVpcAttribute请求参数结构体
    public struct ModifyVpcAttributeRequest: TCRequestModel {
        /// 私有网络ID
        public let vpcId: String

        /// 私有网络名称
        public let vpcName: String?

        /// 是否开启内网监控，0为关闭，1为开启
        public let enableMonitor: Bool?

        public init(vpcId: String, vpcName: String? = nil, enableMonitor: Bool? = nil) {
            self.vpcId = vpcId
            self.vpcName = vpcName
            self.enableMonitor = enableMonitor
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpcName = "VpcName"
            case enableMonitor = "EnableMonitor"
        }
    }

    /// ModifyVpcAttribute返回参数结构体
    public struct ModifyVpcAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改黑石VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改VPC的标识名称和控制VPC的监控起停。
    @inlinable @discardableResult
    public func modifyVpcAttribute(_ input: ModifyVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcAttributeResponse> {
        self.client.execute(action: "ModifyVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改VPC的标识名称和控制VPC的监控起停。
    @inlinable @discardableResult
    public func modifyVpcAttribute(_ input: ModifyVpcAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcAttributeResponse {
        try await self.client.execute(action: "ModifyVpcAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改黑石VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改VPC的标识名称和控制VPC的监控起停。
    @inlinable @discardableResult
    public func modifyVpcAttribute(vpcId: String, vpcName: String? = nil, enableMonitor: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcAttributeResponse> {
        self.modifyVpcAttribute(.init(vpcId: vpcId, vpcName: vpcName, enableMonitor: enableMonitor), region: region, logger: logger, on: eventLoop)
    }

    /// 修改黑石VPC属性
    ///
    /// 本接口（ModifyVpcAttribute）用于修改VPC的标识名称和控制VPC的监控起停。
    @inlinable @discardableResult
    public func modifyVpcAttribute(vpcId: String, vpcName: String? = nil, enableMonitor: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcAttributeResponse {
        try await self.modifyVpcAttribute(.init(vpcId: vpcId, vpcName: vpcName, enableMonitor: enableMonitor), region: region, logger: logger, on: eventLoop)
    }
}
