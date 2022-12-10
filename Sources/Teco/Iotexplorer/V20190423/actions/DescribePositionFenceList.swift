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

extension Iotexplorer {
    /// 获取围栏列表
    @inlinable
    public func describePositionFenceList(_ input: DescribePositionFenceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePositionFenceListResponse > {
        self.client.execute(action: "DescribePositionFenceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取围栏列表
    @inlinable
    public func describePositionFenceList(_ input: DescribePositionFenceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePositionFenceListResponse {
        try await self.client.execute(action: "DescribePositionFenceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePositionFenceList请求参数结构体
    public struct DescribePositionFenceListRequest: TCRequestModel {
        /// 位置空间Id
        public let spaceId: String
        
        /// 翻页偏移量，0起始
        public let offset: Int64?
        
        /// 最大返回结果数
        public let limit: Int64?
        
        public init (spaceId: String, offset: Int64?, limit: Int64?) {
            self.spaceId = spaceId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribePositionFenceList返回参数结构体
    public struct DescribePositionFenceListResponse: TCResponseModel {
        /// 围栏列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [PositionFenceInfo]?
        
        /// 围栏数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}
