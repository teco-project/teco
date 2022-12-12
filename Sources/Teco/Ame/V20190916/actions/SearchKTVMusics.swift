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

extension Ame {
    /// SearchKTVMusics请求参数结构体
    public struct SearchKTVMusicsRequest: TCRequestModel {
        /// 搜索关键词
        public let keyWord: String
        
        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        /// 取值范围：Offset + Limit 不超过5000。
        public let offset: Int64
        
        /// 分页返回的起始偏移量，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        public let limit: Int64
        
        /// 排序方式。默认按照匹配度排序
        /// <li> Sort.Field 可选 CreateTime</li>
        /// <li> Sort.Order 可选 Desc </li>
        /// <li> 当 KeyWord 不为空时，Sort.Field 字段无效， 搜索结果将以匹配度排序。</li>
        public let sort: SortBy?
        
        /// 标签 ID 集合，匹配集合指定所有 ID 。
        /// <li>数组长度限制：10。</li>
        public let tagIds: [String]?
        
        public init (keyWord: String, offset: Int64, limit: Int64, sort: SortBy? = nil, tagIds: [String]? = nil) {
            self.keyWord = keyWord
            self.offset = offset
            self.limit = limit
            self.sort = sort
            self.tagIds = tagIds
        }
        
        enum CodingKeys: String, CodingKey {
            case keyWord = "KeyWord"
            case offset = "Offset"
            case limit = "Limit"
            case sort = "Sort"
            case tagIds = "TagIds"
        }
    }
    
    /// SearchKTVMusics返回参数结构体
    public struct SearchKTVMusicsResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: Int64
        
        /// KTV 曲目列表
        public let ktvMusicInfoSet: [KTVMusicBaseInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ktvMusicInfoSet = "KTVMusicInfoSet"
            case requestId = "RequestId"
        }
    }
    
    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusics(_ input: SearchKTVMusicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SearchKTVMusicsResponse > {
        self.client.execute(action: "SearchKTVMusics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusics(_ input: SearchKTVMusicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchKTVMusicsResponse {
        try await self.client.execute(action: "SearchKTVMusics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
