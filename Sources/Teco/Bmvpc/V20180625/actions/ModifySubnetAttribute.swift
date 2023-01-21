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

extension Bmvpc {
    /// ModifySubnetAttribute请求参数结构体
    public struct ModifySubnetAttributeRequest: TCRequestModel {
        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 子网名称
        public let subnetName: String

        public init(vpcId: String, subnetId: String, subnetName: String) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.subnetName = subnetName
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case subnetName = "SubnetName"
        }
    }

    /// ModifySubnetAttribute返回参数结构体
    public struct ModifySubnetAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(_ input: ModifySubnetAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubnetAttributeResponse> {
        self.client.execute(action: "ModifySubnetAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(_ input: ModifySubnetAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetAttributeResponse {
        try await self.client.execute(action: "ModifySubnetAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(vpcId: String, subnetId: String, subnetName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubnetAttributeResponse> {
        self.modifySubnetAttribute(ModifySubnetAttributeRequest(vpcId: vpcId, subnetId: subnetId, subnetName: subnetName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(vpcId: String, subnetId: String, subnetName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetAttributeResponse {
        try await self.modifySubnetAttribute(ModifySubnetAttributeRequest(vpcId: vpcId, subnetId: subnetId, subnetName: subnetName), region: region, logger: logger, on: eventLoop)
    }
}
