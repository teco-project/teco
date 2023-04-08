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

import TecoCore

extension Vpc {
    /// ModifyNetworkInterfaceAttribute请求参数结构体
    public struct ModifyNetworkInterfaceAttributeRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-pxir56ns。
        public let networkInterfaceId: String

        /// 弹性网卡名称，最大长度不能超过60个字节。
        public let networkInterfaceName: String?

        /// 弹性网卡描述，可任意命名，但不得超过60个字符。
        public let networkInterfaceDescription: String?

        /// 指定绑定的安全组，例如:['sg-1dd51d']。
        public let securityGroupIds: [String]?

        /// 网卡trunking模式设置，Enable-开启，Disable--关闭，默认关闭。
        public let trunkingFlag: String?

        public init(networkInterfaceId: String, networkInterfaceName: String? = nil, networkInterfaceDescription: String? = nil, securityGroupIds: [String]? = nil, trunkingFlag: String? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.networkInterfaceName = networkInterfaceName
            self.networkInterfaceDescription = networkInterfaceDescription
            self.securityGroupIds = securityGroupIds
            self.trunkingFlag = trunkingFlag
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case networkInterfaceName = "NetworkInterfaceName"
            case networkInterfaceDescription = "NetworkInterfaceDescription"
            case securityGroupIds = "SecurityGroupIds"
            case trunkingFlag = "TrunkingFlag"
        }
    }

    /// ModifyNetworkInterfaceAttribute返回参数结构体
    public struct ModifyNetworkInterfaceAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改弹性网卡
    ///
    /// 本接口（ModifyNetworkInterfaceAttribute）用于修改弹性网卡属性。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceAttribute(_ input: ModifyNetworkInterfaceAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkInterfaceAttributeResponse> {
        self.client.execute(action: "ModifyNetworkInterfaceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性网卡
    ///
    /// 本接口（ModifyNetworkInterfaceAttribute）用于修改弹性网卡属性。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceAttribute(_ input: ModifyNetworkInterfaceAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkInterfaceAttributeResponse {
        try await self.client.execute(action: "ModifyNetworkInterfaceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性网卡
    ///
    /// 本接口（ModifyNetworkInterfaceAttribute）用于修改弹性网卡属性。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceAttribute(networkInterfaceId: String, networkInterfaceName: String? = nil, networkInterfaceDescription: String? = nil, securityGroupIds: [String]? = nil, trunkingFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetworkInterfaceAttributeResponse> {
        self.modifyNetworkInterfaceAttribute(.init(networkInterfaceId: networkInterfaceId, networkInterfaceName: networkInterfaceName, networkInterfaceDescription: networkInterfaceDescription, securityGroupIds: securityGroupIds, trunkingFlag: trunkingFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性网卡
    ///
    /// 本接口（ModifyNetworkInterfaceAttribute）用于修改弹性网卡属性。
    @inlinable @discardableResult
    public func modifyNetworkInterfaceAttribute(networkInterfaceId: String, networkInterfaceName: String? = nil, networkInterfaceDescription: String? = nil, securityGroupIds: [String]? = nil, trunkingFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkInterfaceAttributeResponse {
        try await self.modifyNetworkInterfaceAttribute(.init(networkInterfaceId: networkInterfaceId, networkInterfaceName: networkInterfaceName, networkInterfaceDescription: networkInterfaceDescription, securityGroupIds: securityGroupIds, trunkingFlag: trunkingFlag), region: region, logger: logger, on: eventLoop)
    }
}
