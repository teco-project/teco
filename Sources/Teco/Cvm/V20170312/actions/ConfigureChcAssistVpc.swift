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

extension Cvm {
    /// ConfigureChcAssistVpc请求参数结构体
    public struct ConfigureChcAssistVpcRequest: TCRequestModel {
        /// CHC物理服务器的实例Id。
        public let chcIds: [String]

        /// 带外网络信息。
        public let bmcVirtualPrivateCloud: VirtualPrivateCloud

        /// 带外网络的安全组列表
        public let bmcSecurityGroupIds: [String]?

        /// 部署网络信息。
        public let deployVirtualPrivateCloud: VirtualPrivateCloud?

        /// 部署网络的安全组列表
        public let deploySecurityGroupIds: [String]?

        public init(chcIds: [String], bmcVirtualPrivateCloud: VirtualPrivateCloud, bmcSecurityGroupIds: [String]? = nil, deployVirtualPrivateCloud: VirtualPrivateCloud? = nil, deploySecurityGroupIds: [String]? = nil) {
            self.chcIds = chcIds
            self.bmcVirtualPrivateCloud = bmcVirtualPrivateCloud
            self.bmcSecurityGroupIds = bmcSecurityGroupIds
            self.deployVirtualPrivateCloud = deployVirtualPrivateCloud
            self.deploySecurityGroupIds = deploySecurityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case chcIds = "ChcIds"
            case bmcVirtualPrivateCloud = "BmcVirtualPrivateCloud"
            case bmcSecurityGroupIds = "BmcSecurityGroupIds"
            case deployVirtualPrivateCloud = "DeployVirtualPrivateCloud"
            case deploySecurityGroupIds = "DeploySecurityGroupIds"
        }
    }

    /// ConfigureChcAssistVpc返回参数结构体
    public struct ConfigureChcAssistVpcResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置CHC物理服务器的带外和部署网络
    ///
    /// 配置CHC物理服务器的带外和部署网络。传入带外网络和部署网络信息
    @inlinable
    public func configureChcAssistVpc(_ input: ConfigureChcAssistVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigureChcAssistVpcResponse> {
        self.client.execute(action: "ConfigureChcAssistVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置CHC物理服务器的带外和部署网络
    ///
    /// 配置CHC物理服务器的带外和部署网络。传入带外网络和部署网络信息
    @inlinable
    public func configureChcAssistVpc(_ input: ConfigureChcAssistVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureChcAssistVpcResponse {
        try await self.client.execute(action: "ConfigureChcAssistVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置CHC物理服务器的带外和部署网络
    ///
    /// 配置CHC物理服务器的带外和部署网络。传入带外网络和部署网络信息
    @inlinable
    public func configureChcAssistVpc(chcIds: [String], bmcVirtualPrivateCloud: VirtualPrivateCloud, bmcSecurityGroupIds: [String]? = nil, deployVirtualPrivateCloud: VirtualPrivateCloud? = nil, deploySecurityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigureChcAssistVpcResponse> {
        self.configureChcAssistVpc(ConfigureChcAssistVpcRequest(chcIds: chcIds, bmcVirtualPrivateCloud: bmcVirtualPrivateCloud, bmcSecurityGroupIds: bmcSecurityGroupIds, deployVirtualPrivateCloud: deployVirtualPrivateCloud, deploySecurityGroupIds: deploySecurityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 配置CHC物理服务器的带外和部署网络
    ///
    /// 配置CHC物理服务器的带外和部署网络。传入带外网络和部署网络信息
    @inlinable
    public func configureChcAssistVpc(chcIds: [String], bmcVirtualPrivateCloud: VirtualPrivateCloud, bmcSecurityGroupIds: [String]? = nil, deployVirtualPrivateCloud: VirtualPrivateCloud? = nil, deploySecurityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureChcAssistVpcResponse {
        try await self.configureChcAssistVpc(ConfigureChcAssistVpcRequest(chcIds: chcIds, bmcVirtualPrivateCloud: bmcVirtualPrivateCloud, bmcSecurityGroupIds: bmcSecurityGroupIds, deployVirtualPrivateCloud: deployVirtualPrivateCloud, deploySecurityGroupIds: deploySecurityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
