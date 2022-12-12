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
    /// CreateProxyGroup请求参数结构体
    public struct CreateProxyGroupRequest: TCRequestModel {
        /// 通道组所属项目ID
        public let projectId: UInt64
        
        /// 通道组别名
        public let groupName: String
        
        /// 源站地域，参考接口DescribeDestRegions 返回参数RegionDetail中的RegionId
        public let realServerRegion: String
        
        /// 标签列表
        public let tagSet: [TagPair]?
        
        /// 加速地域列表，包括加速地域名，及该地域对应的带宽和并发配置。
        public let accessRegionSet: [AccessConfiguration]?
        
        /// IP版本，可取值：IPv4、IPv6，默认值IPv4
        public let ipAddressVersion: String?
        
        /// 通道组套餐类型，可取值：Thunder、Accelerator，默认值Thunder
        public let packageType: String?
        
        /// 该字段已废弃，当IPAddressVersion为IPv4时，所创建的通道组默认支持Http3.0；当为IPv6，默认不支持Http3.0。
        public let http3Supported: Int64?
        
        public init (projectId: UInt64, groupName: String, realServerRegion: String, tagSet: [TagPair]? = nil, accessRegionSet: [AccessConfiguration]? = nil, ipAddressVersion: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil) {
            self.projectId = projectId
            self.groupName = groupName
            self.realServerRegion = realServerRegion
            self.tagSet = tagSet
            self.accessRegionSet = accessRegionSet
            self.ipAddressVersion = ipAddressVersion
            self.packageType = packageType
            self.http3Supported = http3Supported
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case groupName = "GroupName"
            case realServerRegion = "RealServerRegion"
            case tagSet = "TagSet"
            case accessRegionSet = "AccessRegionSet"
            case ipAddressVersion = "IPAddressVersion"
            case packageType = "PackageType"
            case http3Supported = "Http3Supported"
        }
    }
    
    /// CreateProxyGroup返回参数结构体
    public struct CreateProxyGroupResponse: TCResponseModel {
        /// 通道组ID
        public let groupId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建通道组
    ///
    /// 本接口（CreateProxyGroup）用于创建通道组。
    @inlinable
    public func createProxyGroup(_ input: CreateProxyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateProxyGroupResponse > {
        self.client.execute(action: "CreateProxyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建通道组
    ///
    /// 本接口（CreateProxyGroup）用于创建通道组。
    @inlinable
    public func createProxyGroup(_ input: CreateProxyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProxyGroupResponse {
        try await self.client.execute(action: "CreateProxyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
