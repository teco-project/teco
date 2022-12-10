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

extension Tcr {
    /// 个人版镜像仓库批量删除Tag
    ///
    /// 用于在个人版镜像仓库中批量删除Tag
    @inlinable
    public func batchDeleteImagePersonal(_ input: BatchDeleteImagePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BatchDeleteImagePersonalResponse > {
        self.client.execute(action: "BatchDeleteImagePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 个人版镜像仓库批量删除Tag
    ///
    /// 用于在个人版镜像仓库中批量删除Tag
    @inlinable
    public func batchDeleteImagePersonal(_ input: BatchDeleteImagePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteImagePersonalResponse {
        try await self.client.execute(action: "BatchDeleteImagePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BatchDeleteImagePersonal请求参数结构体
    public struct BatchDeleteImagePersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String
        
        /// Tag列表
        public let tags: [String]
        
        public init (repoName: String, tags: [String]) {
            self.repoName = repoName
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case tags = "Tags"
        }
    }
    
    /// BatchDeleteImagePersonal返回参数结构体
    public struct BatchDeleteImagePersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}