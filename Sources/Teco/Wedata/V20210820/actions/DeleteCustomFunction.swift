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

extension Wedata {
    /// DeleteCustomFunction请求参数结构体
    public struct DeleteCustomFunctionRequest: TCRequestModel {
        /// 集群实例 ID
        public let clusterIdentifier: String

        /// 函数 ID
        public let functionId: String

        /// 项目ID，必须填
        public let projectId: String?

        public init(clusterIdentifier: String, functionId: String, projectId: String? = nil) {
            self.clusterIdentifier = clusterIdentifier
            self.functionId = functionId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case clusterIdentifier = "ClusterIdentifier"
            case functionId = "FunctionId"
            case projectId = "ProjectId"
        }
    }

    /// DeleteCustomFunction返回参数结构体
    public struct DeleteCustomFunctionResponse: TCResponseModel {
        /// 函数 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let functionId: String?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case functionId = "FunctionId"
            case errorMessage = "ErrorMessage"
            case requestId = "RequestId"
        }
    }

    /// 删除用户自定义函数
    @inlinable
    public func deleteCustomFunction(_ input: DeleteCustomFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomFunctionResponse> {
        self.client.execute(action: "DeleteCustomFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户自定义函数
    @inlinable
    public func deleteCustomFunction(_ input: DeleteCustomFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomFunctionResponse {
        try await self.client.execute(action: "DeleteCustomFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户自定义函数
    @inlinable
    public func deleteCustomFunction(clusterIdentifier: String, functionId: String, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomFunctionResponse> {
        self.deleteCustomFunction(DeleteCustomFunctionRequest(clusterIdentifier: clusterIdentifier, functionId: functionId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户自定义函数
    @inlinable
    public func deleteCustomFunction(clusterIdentifier: String, functionId: String, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomFunctionResponse {
        try await self.deleteCustomFunction(DeleteCustomFunctionRequest(clusterIdentifier: clusterIdentifier, functionId: functionId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
