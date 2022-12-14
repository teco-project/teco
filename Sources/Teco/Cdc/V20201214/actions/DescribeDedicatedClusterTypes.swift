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

extension Cdc {
    /// DescribeDedicatedClusterTypes请求参数结构体
    public struct DescribeDedicatedClusterTypesRequest: TCRequestModel {
        /// 模糊匹配专用集群配置名称
        public let name: String?

        /// 待查询的专用集群配置id列表
        public let dedicatedClusterTypeIds: [String]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        /// 是否只查询计算规格类型
        public let isCompute: Bool?

        public init(name: String? = nil, dedicatedClusterTypeIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, isCompute: Bool? = nil) {
            self.name = name
            self.dedicatedClusterTypeIds = dedicatedClusterTypeIds
            self.offset = offset
            self.limit = limit
            self.isCompute = isCompute
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case dedicatedClusterTypeIds = "DedicatedClusterTypeIds"
            case offset = "Offset"
            case limit = "Limit"
            case isCompute = "IsCompute"
        }
    }

    /// DescribeDedicatedClusterTypes返回参数结构体
    public struct DescribeDedicatedClusterTypesResponse: TCResponseModel {
        /// 专用集群配置列表
        public let dedicatedClusterTypeSet: [DedicatedClusterType]

        /// 符合条件的个数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterTypeSet = "DedicatedClusterTypeSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询专有集群配置列表
    @inlinable
    public func describeDedicatedClusterTypes(_ input: DescribeDedicatedClusterTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterTypesResponse > {
        self.client.execute(action: "DescribeDedicatedClusterTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专有集群配置列表
    @inlinable
    public func describeDedicatedClusterTypes(_ input: DescribeDedicatedClusterTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterTypesResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专有集群配置列表
    @inlinable
    public func describeDedicatedClusterTypes(name: String? = nil, dedicatedClusterTypeIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, isCompute: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterTypesResponse > {
        self.describeDedicatedClusterTypes(DescribeDedicatedClusterTypesRequest(name: name, dedicatedClusterTypeIds: dedicatedClusterTypeIds, offset: offset, limit: limit, isCompute: isCompute), logger: logger, on: eventLoop)
    }

    /// 查询专有集群配置列表
    @inlinable
    public func describeDedicatedClusterTypes(name: String? = nil, dedicatedClusterTypeIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, isCompute: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterTypesResponse {
        try await self.describeDedicatedClusterTypes(DescribeDedicatedClusterTypesRequest(name: name, dedicatedClusterTypeIds: dedicatedClusterTypeIds, offset: offset, limit: limit, isCompute: isCompute), logger: logger, on: eventLoop)
    }
}
