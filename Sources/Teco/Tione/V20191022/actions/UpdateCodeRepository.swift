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

extension Tione {
    /// UpdateCodeRepository请求参数结构体
    public struct UpdateCodeRepositoryRequest: TCRequestModel {
        /// 查询存储库名称
        public let codeRepositoryName: String
        
        /// Git凭证
        public let gitSecret: GitSecret?
        
        public init (codeRepositoryName: String, gitSecret: GitSecret? = nil) {
            self.codeRepositoryName = codeRepositoryName
            self.gitSecret = gitSecret
        }
        
        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
            case gitSecret = "GitSecret"
        }
    }
    
    /// UpdateCodeRepository返回参数结构体
    public struct UpdateCodeRepositoryResponse: TCResponseModel {
        /// 存储库名称
        public let codeRepositoryName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
            case requestId = "RequestId"
        }
    }
    
    /// 更新存储库
    @inlinable
    public func updateCodeRepository(_ input: UpdateCodeRepositoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateCodeRepositoryResponse > {
        self.client.execute(action: "UpdateCodeRepository", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新存储库
    @inlinable
    public func updateCodeRepository(_ input: UpdateCodeRepositoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCodeRepositoryResponse {
        try await self.client.execute(action: "UpdateCodeRepository", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
