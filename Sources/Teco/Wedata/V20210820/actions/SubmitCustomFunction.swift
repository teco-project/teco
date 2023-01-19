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

extension Wedata {
    /// SubmitCustomFunction请求参数结构体
    public struct SubmitCustomFunctionRequest: TCRequestModel {
        /// 函数唯一标识
        public let functionId: String

        /// 集群实例 ID
        public let clusterIdentifier: String

        /// 备注信息
        public let comment: String

        /// 项目ID
        public let projectId: String?

        public init(functionId: String, clusterIdentifier: String, comment: String, projectId: String? = nil) {
            self.functionId = functionId
            self.clusterIdentifier = clusterIdentifier
            self.comment = comment
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case functionId = "FunctionId"
            case clusterIdentifier = "ClusterIdentifier"
            case comment = "Comment"
            case projectId = "ProjectId"
        }
    }

    /// SubmitCustomFunction返回参数结构体
    public struct SubmitCustomFunctionResponse: TCResponseModel {
        /// 函数唯一标识
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

    /// 提交自定义函数
    @inlinable
    public func submitCustomFunction(_ input: SubmitCustomFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCustomFunctionResponse> {
        self.client.execute(action: "SubmitCustomFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交自定义函数
    @inlinable
    public func submitCustomFunction(_ input: SubmitCustomFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCustomFunctionResponse {
        try await self.client.execute(action: "SubmitCustomFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交自定义函数
    @inlinable
    public func submitCustomFunction(functionId: String, clusterIdentifier: String, comment: String, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCustomFunctionResponse> {
        self.submitCustomFunction(SubmitCustomFunctionRequest(functionId: functionId, clusterIdentifier: clusterIdentifier, comment: comment, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 提交自定义函数
    @inlinable
    public func submitCustomFunction(functionId: String, clusterIdentifier: String, comment: String, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCustomFunctionResponse {
        try await self.submitCustomFunction(SubmitCustomFunctionRequest(functionId: functionId, clusterIdentifier: clusterIdentifier, comment: comment, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
