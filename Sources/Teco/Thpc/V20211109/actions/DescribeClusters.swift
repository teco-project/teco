//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Thpc {
    /// 查询集群列表
    ///
    /// 本接口（DescribeClusters）用于查询集群列表。
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClustersResponse > {
        self.client.execute(action: "DescribeClusters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询集群列表
    ///
    /// 本接口（DescribeClusters）用于查询集群列表。
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCRequestModel {
        /// 集群ID列表。通过该参数可以指定需要查询信息的集群列表。<br>如果您不指定该参数，则返回Limit数量以内的集群信息。
        public let clusterIds: [String]?
        
        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?
        
        public init (clusterIds: [String]?, offset: Int64?, limit: Int64?) {
            self.clusterIds = clusterIds
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCResponseModel {
        /// 集群概览信息列表。
        public let clusterSet: [ClusterOverview]
        
        /// 集群数量。
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clusterSet = "ClusterSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}