//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Tione {
    /// DeleteCodeRepository请求参数结构体
    public struct DeleteCodeRepositoryRequest: TCRequestModel {
        /// 存储库名称
        public let codeRepositoryName: String

        public init(codeRepositoryName: String) {
            self.codeRepositoryName = codeRepositoryName
        }

        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
        }
    }

    /// DeleteCodeRepository返回参数结构体
    public struct DeleteCodeRepositoryResponse: TCResponseModel {
        /// 存储库名称
        public let codeRepositoryName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
            case requestId = "RequestId"
        }
    }

    /// 删除存储库
    @inlinable
    public func deleteCodeRepository(_ input: DeleteCodeRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCodeRepositoryResponse> {
        self.client.execute(action: "DeleteCodeRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除存储库
    @inlinable
    public func deleteCodeRepository(_ input: DeleteCodeRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCodeRepositoryResponse {
        try await self.client.execute(action: "DeleteCodeRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除存储库
    @inlinable
    public func deleteCodeRepository(codeRepositoryName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCodeRepositoryResponse> {
        self.deleteCodeRepository(.init(codeRepositoryName: codeRepositoryName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除存储库
    @inlinable
    public func deleteCodeRepository(codeRepositoryName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCodeRepositoryResponse {
        try await self.deleteCodeRepository(.init(codeRepositoryName: codeRepositoryName), region: region, logger: logger, on: eventLoop)
    }
}
