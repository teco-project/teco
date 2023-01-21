//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Batch {
    /// ModifyComputeEnv请求参数结构体
    public struct ModifyComputeEnvRequest: TCRequestModel {
        /// 计算环境ID
        public let envId: String

        /// 计算节点期望个数
        public let desiredComputeNodeCount: Int64?

        /// 计算环境名称
        public let envName: String?

        /// 计算环境描述
        public let envDescription: String?

        /// 计算环境属性数据
        public let envData: ComputeEnvData?

        public init(envId: String, desiredComputeNodeCount: Int64? = nil, envName: String? = nil, envDescription: String? = nil, envData: ComputeEnvData? = nil) {
            self.envId = envId
            self.desiredComputeNodeCount = desiredComputeNodeCount
            self.envName = envName
            self.envDescription = envDescription
            self.envData = envData
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case desiredComputeNodeCount = "DesiredComputeNodeCount"
            case envName = "EnvName"
            case envDescription = "EnvDescription"
            case envData = "EnvData"
        }
    }

    /// ModifyComputeEnv返回参数结构体
    public struct ModifyComputeEnvResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改计算环境
    ///
    /// 用于修改计算环境属性
    @inlinable @discardableResult
    public func modifyComputeEnv(_ input: ModifyComputeEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyComputeEnvResponse> {
        self.client.execute(action: "ModifyComputeEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改计算环境
    ///
    /// 用于修改计算环境属性
    @inlinable @discardableResult
    public func modifyComputeEnv(_ input: ModifyComputeEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyComputeEnvResponse {
        try await self.client.execute(action: "ModifyComputeEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改计算环境
    ///
    /// 用于修改计算环境属性
    @inlinable @discardableResult
    public func modifyComputeEnv(envId: String, desiredComputeNodeCount: Int64? = nil, envName: String? = nil, envDescription: String? = nil, envData: ComputeEnvData? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyComputeEnvResponse> {
        self.modifyComputeEnv(ModifyComputeEnvRequest(envId: envId, desiredComputeNodeCount: desiredComputeNodeCount, envName: envName, envDescription: envDescription, envData: envData), region: region, logger: logger, on: eventLoop)
    }

    /// 修改计算环境
    ///
    /// 用于修改计算环境属性
    @inlinable @discardableResult
    public func modifyComputeEnv(envId: String, desiredComputeNodeCount: Int64? = nil, envName: String? = nil, envDescription: String? = nil, envData: ComputeEnvData? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyComputeEnvResponse {
        try await self.modifyComputeEnv(ModifyComputeEnvRequest(envId: envId, desiredComputeNodeCount: desiredComputeNodeCount, envName: envName, envDescription: envDescription, envData: envData), region: region, logger: logger, on: eventLoop)
    }
}
