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

extension Yinsuda {
    /// 获取标签歌曲
    ///
    /// 通过标签过滤歌曲列表。
    @inlinable
    public func describeKTVMusicsByTag(_ input: DescribeKTVMusicsByTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeKTVMusicsByTagResponse > {
        self.client.execute(action: "DescribeKTVMusicsByTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取标签歌曲
    ///
    /// 通过标签过滤歌曲列表。
    @inlinable
    public func describeKTVMusicsByTag(_ input: DescribeKTVMusicsByTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVMusicsByTagResponse {
        try await self.client.execute(action: "DescribeKTVMusicsByTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeKTVMusicsByTag请求参数结构体
    public struct DescribeKTVMusicsByTagRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String
        
        /// 用户标识。
        public let userId: String
        
        /// 标签 Id。
        public let tagId: String
        
        /// 滚动标记。
        public let scrollToken: String?
        
        /// 返回条数限制，默认 20，最大 50。
        public let limit: Int64?
        
        /// 权益过滤，取值有：
        /// <li>Play：可播；</li>
        /// <li>Sing：可唱。</li>
        public let rightFilters: [String]?
        
        public init (appName: String, userId: String, tagId: String, scrollToken: String?, limit: Int64?, rightFilters: [String]?) {
            self.appName = appName
            self.userId = userId
            self.tagId = tagId
            self.scrollToken = scrollToken
            self.limit = limit
            self.rightFilters = rightFilters
        }
        
        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case tagId = "TagId"
            case scrollToken = "ScrollToken"
            case limit = "Limit"
            case rightFilters = "RightFilters"
        }
    }
    
    /// DescribeKTVMusicsByTag返回参数结构体
    public struct DescribeKTVMusicsByTagResponse: TCResponseModel {
        /// 歌曲信息列表。
        public let ktvMusicInfoSet: [KTVMusicBaseInfo]
        
        /// 滚动标记，用于设置下次请求的 ScrollToken 参数。
        public let scrollToken: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ktvMusicInfoSet = "KTVMusicInfoSet"
            case scrollToken = "ScrollToken"
            case requestId = "RequestId"
        }
    }
}