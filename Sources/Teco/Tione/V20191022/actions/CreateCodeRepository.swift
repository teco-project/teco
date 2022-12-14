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
    /// CreateCodeRepository请求参数结构体
    public struct CreateCodeRepositoryRequest: TCRequestModel {
        /// 存储库名称
        public let codeRepositoryName: String

        /// Git相关配置
        public let gitConfig: GitConfig

        /// Git凭证
        public let gitSecret: GitSecret

        public init(codeRepositoryName: String, gitConfig: GitConfig, gitSecret: GitSecret) {
            self.codeRepositoryName = codeRepositoryName
            self.gitConfig = gitConfig
            self.gitSecret = gitSecret
        }

        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
            case gitConfig = "GitConfig"
            case gitSecret = "GitSecret"
        }
    }

    /// CreateCodeRepository返回参数结构体
    public struct CreateCodeRepositoryResponse: TCResponseModel {
        /// 存储库名称
        public let codeRepositoryName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
            case requestId = "RequestId"
        }
    }

    /// 创建存储库
    @inlinable
    public func createCodeRepository(_ input: CreateCodeRepositoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCodeRepositoryResponse > {
        self.client.execute(action: "CreateCodeRepository", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建存储库
    @inlinable
    public func createCodeRepository(_ input: CreateCodeRepositoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCodeRepositoryResponse {
        try await self.client.execute(action: "CreateCodeRepository", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建存储库
    @inlinable
    public func createCodeRepository(codeRepositoryName: String, gitConfig: GitConfig, gitSecret: GitSecret, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCodeRepositoryResponse > {
        self.createCodeRepository(CreateCodeRepositoryRequest(codeRepositoryName: codeRepositoryName, gitConfig: gitConfig, gitSecret: gitSecret), logger: logger, on: eventLoop)
    }

    /// 创建存储库
    @inlinable
    public func createCodeRepository(codeRepositoryName: String, gitConfig: GitConfig, gitSecret: GitSecret, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCodeRepositoryResponse {
        try await self.createCodeRepository(CreateCodeRepositoryRequest(codeRepositoryName: codeRepositoryName, gitConfig: gitConfig, gitSecret: gitSecret), logger: logger, on: eventLoop)
    }
}
