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

extension Gaap {
    /// CreateProxy请求参数结构体
    public struct CreateProxyRequest: TCRequestModel {
        /// 通道的项目ID。
        public let projectId: Int64

        /// 通道名称。
        public let proxyName: String

        /// 接入地域。
        public let accessRegion: String

        /// 通道带宽上限，单位：Mbps。
        public let bandwidth: UInt64

        /// 通道并发量上限，表示同时在线的连接数，单位：万。
        public let concurrent: UInt64

        /// 源站地域。当GroupId存在时，源站地域为通道组的源站地域,此时可不填该字段。当GroupId不存在时，需要填写该字段
        public let realServerRegion: String?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        /// 更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?

        /// 通道所在的通道组ID，当在通道组中创建通道时必带，否则忽略该字段。
        public let groupId: String?

        /// 通道需要添加的标签列表。
        public let tagSet: [TagPair]?

        /// 被复制的通道ID。只有处于运行中状态的通道可以被复制。
        /// 当设置该参数时，表示复制该通道。
        public let clonedProxyId: String?

        /// 计费方式 (0:按带宽计费，1:按流量计费 默认按带宽计费）
        public let billingType: Int64?

        /// IP版本，可取值：IPv4、IPv6，默认值IPv4
        public let ipAddressVersion: String?

        /// 网络类型，normal表示常规BGP，cn2表示精品BGP，triple表示三网
        public let networkType: String?

        /// 通道套餐类型，Thunder表示标准通道组，Accelerator表示游戏加速器通道，CrossBorder表示跨境通道。
        public let packageType: String?

        /// 该字段已废弃，当IPAddressVersion为IPv4时，所创建的通道默认支持Http3.0；当为IPv6，默认不支持Http3.0。
        public let http3Supported: Int64?

        public init(projectId: Int64, proxyName: String, accessRegion: String, bandwidth: UInt64, concurrent: UInt64, realServerRegion: String? = nil, clientToken: String? = nil, groupId: String? = nil, tagSet: [TagPair]? = nil, clonedProxyId: String? = nil, billingType: Int64? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil) {
            self.projectId = projectId
            self.proxyName = proxyName
            self.accessRegion = accessRegion
            self.bandwidth = bandwidth
            self.concurrent = concurrent
            self.realServerRegion = realServerRegion
            self.clientToken = clientToken
            self.groupId = groupId
            self.tagSet = tagSet
            self.clonedProxyId = clonedProxyId
            self.billingType = billingType
            self.ipAddressVersion = ipAddressVersion
            self.networkType = networkType
            self.packageType = packageType
            self.http3Supported = http3Supported
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case proxyName = "ProxyName"
            case accessRegion = "AccessRegion"
            case bandwidth = "Bandwidth"
            case concurrent = "Concurrent"
            case realServerRegion = "RealServerRegion"
            case clientToken = "ClientToken"
            case groupId = "GroupId"
            case tagSet = "TagSet"
            case clonedProxyId = "ClonedProxyId"
            case billingType = "BillingType"
            case ipAddressVersion = "IPAddressVersion"
            case networkType = "NetworkType"
            case packageType = "PackageType"
            case http3Supported = "Http3Supported"
        }
    }

    /// CreateProxy返回参数结构体
    public struct CreateProxyResponse: TCResponseModel {
        /// 通道的实例ID。
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 创建通道
    ///
    /// 本接口（CreateProxy）用于创建/复制一个指定配置的加速通道。当复制通道时，需要设置新通道的基本配置参数，并设置ClonedProxyId来指定被复制的通道。
    @inlinable
    public func createProxy(_ input: CreateProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProxyResponse> {
        self.client.execute(action: "CreateProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建通道
    ///
    /// 本接口（CreateProxy）用于创建/复制一个指定配置的加速通道。当复制通道时，需要设置新通道的基本配置参数，并设置ClonedProxyId来指定被复制的通道。
    @inlinable
    public func createProxy(_ input: CreateProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProxyResponse {
        try await self.client.execute(action: "CreateProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建通道
    ///
    /// 本接口（CreateProxy）用于创建/复制一个指定配置的加速通道。当复制通道时，需要设置新通道的基本配置参数，并设置ClonedProxyId来指定被复制的通道。
    @inlinable
    public func createProxy(projectId: Int64, proxyName: String, accessRegion: String, bandwidth: UInt64, concurrent: UInt64, realServerRegion: String? = nil, clientToken: String? = nil, groupId: String? = nil, tagSet: [TagPair]? = nil, clonedProxyId: String? = nil, billingType: Int64? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProxyResponse> {
        let input = CreateProxyRequest(projectId: projectId, proxyName: proxyName, accessRegion: accessRegion, bandwidth: bandwidth, concurrent: concurrent, realServerRegion: realServerRegion, clientToken: clientToken, groupId: groupId, tagSet: tagSet, clonedProxyId: clonedProxyId, billingType: billingType, ipAddressVersion: ipAddressVersion, networkType: networkType, packageType: packageType, http3Supported: http3Supported)
        return self.client.execute(action: "CreateProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建通道
    ///
    /// 本接口（CreateProxy）用于创建/复制一个指定配置的加速通道。当复制通道时，需要设置新通道的基本配置参数，并设置ClonedProxyId来指定被复制的通道。
    @inlinable
    public func createProxy(projectId: Int64, proxyName: String, accessRegion: String, bandwidth: UInt64, concurrent: UInt64, realServerRegion: String? = nil, clientToken: String? = nil, groupId: String? = nil, tagSet: [TagPair]? = nil, clonedProxyId: String? = nil, billingType: Int64? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProxyResponse {
        let input = CreateProxyRequest(projectId: projectId, proxyName: proxyName, accessRegion: accessRegion, bandwidth: bandwidth, concurrent: concurrent, realServerRegion: realServerRegion, clientToken: clientToken, groupId: groupId, tagSet: tagSet, clonedProxyId: clonedProxyId, billingType: billingType, ipAddressVersion: ipAddressVersion, networkType: networkType, packageType: packageType, http3Supported: http3Supported)
        return try await self.client.execute(action: "CreateProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
