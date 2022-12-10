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

extension Ame {
    /// 获取歌手下歌曲列表
    ///
    /// 根据歌手id，返回该歌手下歌曲列表。
    @inlinable
    public func describeKTVSingerMusics(_ input: DescribeKTVSingerMusicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeKTVSingerMusicsResponse > {
        self.client.execute(action: "DescribeKTVSingerMusics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取歌手下歌曲列表
    ///
    /// 根据歌手id，返回该歌手下歌曲列表。
    @inlinable
    public func describeKTVSingerMusics(_ input: DescribeKTVSingerMusicsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSingerMusicsResponse {
        try await self.client.execute(action: "DescribeKTVSingerMusics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeKTVSingerMusics请求参数结构体
    public struct DescribeKTVSingerMusicsRequest: TCRequestModel {
        /// 歌手id
        public let singerId: String
        
        /// 分页偏移量，默认值：0。
        public let offset: Int64?
        
        /// 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        public let limit: Int64?
        
        public init (singerId: String, offset: Int64?, limit: Int64?) {
            self.singerId = singerId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case singerId = "SingerId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeKTVSingerMusics返回参数结构体
    public struct DescribeKTVSingerMusicsResponse: TCResponseModel {
        /// 总曲目数
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
}