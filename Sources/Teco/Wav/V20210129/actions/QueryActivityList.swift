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

extension Wav {
    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityList(_ input: QueryActivityListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryActivityListResponse > {
        self.client.execute(action: "QueryActivityList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询活动列表接口
    ///
    /// 根据游标拉取活动列表信息
    @inlinable
    public func queryActivityList(_ input: QueryActivityListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityListResponse {
        try await self.client.execute(action: "QueryActivityList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryActivityList请求参数结构体
    public struct QueryActivityListRequest: TCRequestModel {
        /// 分页游标，对应结果返回的NextCursor,首次请求保持为空
        public let cursor: String?
        
        /// 单页数据限制
        public let limit: Int64?
        
        public init (cursor: String?, limit: Int64?) {
            self.cursor = cursor
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case cursor = "Cursor"
            case limit = "Limit"
        }
    }
    
    /// QueryActivityList返回参数结构体
    public struct QueryActivityListResponse: TCResponseModel {
        /// 分页游标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?
        
        /// 活码列表响应参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ActivityDetail]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }
    }
}