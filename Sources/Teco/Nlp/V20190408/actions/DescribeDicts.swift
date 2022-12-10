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

extension Nlp {
    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDicts(_ input: DescribeDictsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDictsResponse > {
        self.client.execute(action: "DescribeDicts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询词库列表
    ///
    /// 返回属于当前用户的所有自定义词库列表。
    @inlinable
    public func describeDicts(_ input: DescribeDictsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDictsResponse {
        try await self.client.execute(action: "DescribeDicts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDicts请求参数结构体
    public struct DescribeDictsRequest: TCRequestModel {
        /// 每页数据量，范围为1~100，默认为10。
        public let limit: UInt64?
        
        /// 分页偏移量，从0开始，默认为0。
        public let offset: UInt64?
        
        public init (limit: UInt64?, offset: UInt64?) {
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeDicts返回参数结构体
    public struct DescribeDictsResponse: TCResponseModel {
        /// 记录总条数。
        public let totalCount: UInt64
        
        /// 自定义词库信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dicts: [DictInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dicts = "Dicts"
            case requestId = "RequestId"
        }
    }
}
