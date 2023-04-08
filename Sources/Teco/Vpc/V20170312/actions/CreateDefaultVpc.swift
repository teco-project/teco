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

extension Vpc {
    /// CreateDefaultVpc请求参数结构体
    public struct CreateDefaultVpcRequest: TCRequestModel {
        /// 子网所在的可用区，该参数可通过[DescribeZones](https://cloud.tencent.com/document/product/213/15707)接口获取，例如ap-guangzhou-1，不指定时将随机选择可用区。
        public let zone: String?

        /// 是否强制返回默认VPC。
        public let force: Bool?

        public init(zone: String? = nil, force: Bool? = nil) {
            self.zone = zone
            self.force = force
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case force = "Force"
        }
    }

    /// CreateDefaultVpc返回参数结构体
    public struct CreateDefaultVpcResponse: TCResponseModel {
        /// 默认VPC和子网ID。
        public let vpc: DefaultVpcSubnet

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpc = "Vpc"
            case requestId = "RequestId"
        }
    }

    /// 创建默认VPC和默认子网
    ///
    /// 本接口（CreateDefaultVpc）用于创建默认私有网络(VPC）。
    ///
    /// 默认VPC适用于快速入门和启动公共实例，您可以像使用任何其他VPC一样使用默认VPC。如果您想创建标准VPC，即指定VPC名称、VPC网段、子网网段、子网可用区，请使用常规创建VPC接口（CreateVpc）
    ///
    /// 正常情况，本接口并不一定生产默认VPC，而是根据用户账号的网络属性（DescribeAccountAttributes）来决定的
    /// * 支持基础网络、VPC，返回VpcId为0
    /// * 只支持VPC，返回默认VPC信息
    ///
    /// 您也可以通过 Force 参数，强制返回默认VPC。
    @inlinable
    public func createDefaultVpc(_ input: CreateDefaultVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDefaultVpcResponse> {
        self.client.execute(action: "CreateDefaultVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建默认VPC和默认子网
    ///
    /// 本接口（CreateDefaultVpc）用于创建默认私有网络(VPC）。
    ///
    /// 默认VPC适用于快速入门和启动公共实例，您可以像使用任何其他VPC一样使用默认VPC。如果您想创建标准VPC，即指定VPC名称、VPC网段、子网网段、子网可用区，请使用常规创建VPC接口（CreateVpc）
    ///
    /// 正常情况，本接口并不一定生产默认VPC，而是根据用户账号的网络属性（DescribeAccountAttributes）来决定的
    /// * 支持基础网络、VPC，返回VpcId为0
    /// * 只支持VPC，返回默认VPC信息
    ///
    /// 您也可以通过 Force 参数，强制返回默认VPC。
    @inlinable
    public func createDefaultVpc(_ input: CreateDefaultVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDefaultVpcResponse {
        try await self.client.execute(action: "CreateDefaultVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建默认VPC和默认子网
    ///
    /// 本接口（CreateDefaultVpc）用于创建默认私有网络(VPC）。
    ///
    /// 默认VPC适用于快速入门和启动公共实例，您可以像使用任何其他VPC一样使用默认VPC。如果您想创建标准VPC，即指定VPC名称、VPC网段、子网网段、子网可用区，请使用常规创建VPC接口（CreateVpc）
    ///
    /// 正常情况，本接口并不一定生产默认VPC，而是根据用户账号的网络属性（DescribeAccountAttributes）来决定的
    /// * 支持基础网络、VPC，返回VpcId为0
    /// * 只支持VPC，返回默认VPC信息
    ///
    /// 您也可以通过 Force 参数，强制返回默认VPC。
    @inlinable
    public func createDefaultVpc(zone: String? = nil, force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDefaultVpcResponse> {
        self.createDefaultVpc(.init(zone: zone, force: force), region: region, logger: logger, on: eventLoop)
    }

    /// 创建默认VPC和默认子网
    ///
    /// 本接口（CreateDefaultVpc）用于创建默认私有网络(VPC）。
    ///
    /// 默认VPC适用于快速入门和启动公共实例，您可以像使用任何其他VPC一样使用默认VPC。如果您想创建标准VPC，即指定VPC名称、VPC网段、子网网段、子网可用区，请使用常规创建VPC接口（CreateVpc）
    ///
    /// 正常情况，本接口并不一定生产默认VPC，而是根据用户账号的网络属性（DescribeAccountAttributes）来决定的
    /// * 支持基础网络、VPC，返回VpcId为0
    /// * 只支持VPC，返回默认VPC信息
    ///
    /// 您也可以通过 Force 参数，强制返回默认VPC。
    @inlinable
    public func createDefaultVpc(zone: String? = nil, force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDefaultVpcResponse {
        try await self.createDefaultVpc(.init(zone: zone, force: force), region: region, logger: logger, on: eventLoop)
    }
}
