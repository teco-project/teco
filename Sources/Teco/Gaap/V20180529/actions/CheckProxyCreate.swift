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

extension Gaap {
    /// CheckProxyCreate请求参数结构体
    public struct CheckProxyCreateRequest: TCRequestModel {
        /// 通道的接入(加速)区域。取值可通过接口DescribeAccessRegionsByDestRegion获取到
        public let accessRegion: String
        
        /// 通道的源站区域。取值可通过接口DescribeDestRegions获取到
        public let realServerRegion: String
        
        /// 通道带宽上限，单位：Mbps。
        public let bandwidth: UInt64
        
        /// 通道并发量上限，表示同时在线的连接数，单位：万。
        public let concurrent: UInt64
        
        /// 如果在通道组下创建通道，需要填写通道组的ID
        public let groupId: String?
        
        /// IP版本，可取值：IPv4、IPv6，默认值IPv4
        public let ipAddressVersion: String?
        
        /// 网络类型，可取值：normal、cn2，默认值normal
        public let networkType: String?
        
        /// 通道套餐类型。Thunder表示标准通道组，Accelerator表示游戏加速器通道，CrossBorder表示跨境通道。
        public let packageType: String?
        
        /// 该字段已废弃，当IPAddressVersion为IPv4时，所创建的通道默认支持Http3.0；当为IPv6，默认不支持Http3.0。
        public let http3Supported: Int64?
        
        public init (accessRegion: String, realServerRegion: String, bandwidth: UInt64, concurrent: UInt64, groupId: String? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil) {
            self.accessRegion = accessRegion
            self.realServerRegion = realServerRegion
            self.bandwidth = bandwidth
            self.concurrent = concurrent
            self.groupId = groupId
            self.ipAddressVersion = ipAddressVersion
            self.networkType = networkType
            self.packageType = packageType
            self.http3Supported = http3Supported
        }
        
        enum CodingKeys: String, CodingKey {
            case accessRegion = "AccessRegion"
            case realServerRegion = "RealServerRegion"
            case bandwidth = "Bandwidth"
            case concurrent = "Concurrent"
            case groupId = "GroupId"
            case ipAddressVersion = "IPAddressVersion"
            case networkType = "NetworkType"
            case packageType = "PackageType"
            case http3Supported = "Http3Supported"
        }
    }
    
    /// CheckProxyCreate返回参数结构体
    public struct CheckProxyCreateResponse: TCResponseModel {
        /// 查询能否创建给定配置的通道，1可以创建，0不可创建。
        public let checkFlag: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case checkFlag = "CheckFlag"
            case requestId = "RequestId"
        }
    }
    
    /// 查询通道是否可以创建
    ///
    /// 本接口(CheckProxyCreate)用于查询能否创建指定配置的加速通道。
    @inlinable
    public func checkProxyCreate(_ input: CheckProxyCreateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckProxyCreateResponse > {
        self.client.execute(action: "CheckProxyCreate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询通道是否可以创建
    ///
    /// 本接口(CheckProxyCreate)用于查询能否创建指定配置的加速通道。
    @inlinable
    public func checkProxyCreate(_ input: CheckProxyCreateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckProxyCreateResponse {
        try await self.client.execute(action: "CheckProxyCreate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
