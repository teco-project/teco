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

extension Wav {
    /// 新增标签库接口
    ///
    /// 该接口用户设置标签库, 每个企业最多可配置3000个企业标签。
    @inlinable
    public func createCorpTag(_ input: CreateCorpTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCorpTagResponse > {
        self.client.execute(action: "CreateCorpTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新增标签库接口
    ///
    /// 该接口用户设置标签库, 每个企业最多可配置3000个企业标签。
    @inlinable
    public func createCorpTag(_ input: CreateCorpTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCorpTagResponse {
        try await self.client.execute(action: "CreateCorpTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCorpTag请求参数结构体
    public struct CreateCorpTagRequest: TCRequestModel {
        /// 标签组名称，最长为15个字符
        public let groupName: String
        
        /// 标签信息数组
        public let tags: [TagInfo]
        
        /// 标签组次序值。sort值大的排序靠前。有效的值范围是[0, 2^32)
        public let sort: UInt64?
        
        public init (groupName: String, tags: [TagInfo], sort: UInt64?) {
            self.groupName = groupName
            self.tags = tags
            self.sort = sort
        }
        
        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case tags = "Tags"
            case sort = "Sort"
        }
    }
    
    /// CreateCorpTag返回参数结构体
    public struct CreateCorpTagResponse: TCResponseModel {
        /// 标签组信息
        public let tagGroup: TagGroup
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case tagGroup = "TagGroup"
            case requestId = "RequestId"
        }
    }
}
