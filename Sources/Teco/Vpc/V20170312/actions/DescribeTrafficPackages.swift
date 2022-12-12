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

extension Vpc {
    /// DescribeTrafficPackages请求参数结构体
    public struct DescribeTrafficPackagesRequest: TCRequestModel {
        /// 共享流量包ID，支持批量
        public let trafficPackageIds: [String]?
        
        /// 每次请求的`Filters`的上限为10。参数不支持同时指定`TrafficPackageIds`和`Filters`。详细的过滤条件如下：
        /// <li> traffic-package_id - String - 是否必填：否 - （过滤条件）按照共享流量包的唯一标识ID过滤。</li>
        /// <li> traffic-package-name - String - 是否必填：否 - （过滤条件）按照共享流量包名称过滤。不支持模糊过滤。</li>
        /// <li> status - String - 是否必填：否 - （过滤条件）按照共享流量包状态过滤。可选状态：[AVAILABLE|EXPIRED|EXHAUSTED]</li>
        public let filters: [Filter]?
        
        /// 分页参数
        public let offset: UInt64?
        
        /// 分页参数
        public let limit: UInt64?
        
        public init (trafficPackageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.trafficPackageIds = trafficPackageIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case trafficPackageIds = "TrafficPackageIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeTrafficPackages返回参数结构体
    public struct DescribeTrafficPackagesResponse: TCResponseModel {
        /// 按照条件查询出来的流量包数量
        public let totalCount: Int64
        
        /// 流量包信息
        public let trafficPackageSet: [TrafficPackage]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case trafficPackageSet = "TrafficPackageSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询共享流量包
    ///
    /// 本接口 (DescribeTrafficPackages)  用于查询共享流量包详细信息，包括共享流量包唯一标识ID，名称，流量使用信息等
    @inlinable
    public func describeTrafficPackages(_ input: DescribeTrafficPackagesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTrafficPackagesResponse > {
        self.client.execute(action: "DescribeTrafficPackages", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询共享流量包
    ///
    /// 本接口 (DescribeTrafficPackages)  用于查询共享流量包详细信息，包括共享流量包唯一标识ID，名称，流量使用信息等
    @inlinable
    public func describeTrafficPackages(_ input: DescribeTrafficPackagesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficPackagesResponse {
        try await self.client.execute(action: "DescribeTrafficPackages", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
