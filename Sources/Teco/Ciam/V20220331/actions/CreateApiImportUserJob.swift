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

import Logging
import NIOCore
import TecoCore

extension Ciam {
    /// CreateApiImportUserJob请求参数结构体
    public struct CreateApiImportUserJobRequest: TCRequest {
        /// 用户目录ID
        public let userStoreId: String

        /// 导入的用户数据
        public let dataFlowUserCreateList: [ImportUser]

        public init(userStoreId: String, dataFlowUserCreateList: [ImportUser]) {
            self.userStoreId = userStoreId
            self.dataFlowUserCreateList = dataFlowUserCreateList
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case dataFlowUserCreateList = "DataFlowUserCreateList"
        }
    }

    /// CreateApiImportUserJob返回参数结构体
    public struct CreateApiImportUserJobResponse: TCResponse {
        /// 数据流任务
        public let job: Job

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case job = "Job"
            case requestId = "RequestId"
        }
    }

    /// 新建接口导入用户任务
    @inlinable
    public func createApiImportUserJob(_ input: CreateApiImportUserJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiImportUserJobResponse> {
        self.client.execute(action: "CreateApiImportUserJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建接口导入用户任务
    @inlinable
    public func createApiImportUserJob(_ input: CreateApiImportUserJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiImportUserJobResponse {
        try await self.client.execute(action: "CreateApiImportUserJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建接口导入用户任务
    @inlinable
    public func createApiImportUserJob(userStoreId: String, dataFlowUserCreateList: [ImportUser], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiImportUserJobResponse> {
        self.createApiImportUserJob(.init(userStoreId: userStoreId, dataFlowUserCreateList: dataFlowUserCreateList), region: region, logger: logger, on: eventLoop)
    }

    /// 新建接口导入用户任务
    @inlinable
    public func createApiImportUserJob(userStoreId: String, dataFlowUserCreateList: [ImportUser], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiImportUserJobResponse {
        try await self.createApiImportUserJob(.init(userStoreId: userStoreId, dataFlowUserCreateList: dataFlowUserCreateList), region: region, logger: logger, on: eventLoop)
    }
}
