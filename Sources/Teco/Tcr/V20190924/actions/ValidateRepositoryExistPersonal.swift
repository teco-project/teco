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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcr {
    /// ValidateRepositoryExistPersonal请求参数结构体
    public struct ValidateRepositoryExistPersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String

        public init(repoName: String) {
            self.repoName = repoName
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
        }
    }

    /// ValidateRepositoryExistPersonal返回参数结构体
    public struct ValidateRepositoryExistPersonalResponse: TCResponseModel {
        /// 验证个人版仓库是否存在返回信息
        public let data: RepoIsExistResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 验证个人版仓库是否存在
    ///
    /// 用于判断个人版仓库是否存在
    @inlinable
    public func validateRepositoryExistPersonal(_ input: ValidateRepositoryExistPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidateRepositoryExistPersonalResponse> {
        self.client.execute(action: "ValidateRepositoryExistPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证个人版仓库是否存在
    ///
    /// 用于判断个人版仓库是否存在
    @inlinable
    public func validateRepositoryExistPersonal(_ input: ValidateRepositoryExistPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidateRepositoryExistPersonalResponse {
        try await self.client.execute(action: "ValidateRepositoryExistPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证个人版仓库是否存在
    ///
    /// 用于判断个人版仓库是否存在
    @inlinable
    public func validateRepositoryExistPersonal(repoName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidateRepositoryExistPersonalResponse> {
        self.validateRepositoryExistPersonal(.init(repoName: repoName), region: region, logger: logger, on: eventLoop)
    }

    /// 验证个人版仓库是否存在
    ///
    /// 用于判断个人版仓库是否存在
    @inlinable
    public func validateRepositoryExistPersonal(repoName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidateRepositoryExistPersonalResponse {
        try await self.validateRepositoryExistPersonal(.init(repoName: repoName), region: region, logger: logger, on: eventLoop)
    }
}
