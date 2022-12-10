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
    /// 查询模型加速引擎版本列表
    @inlinable
    public func describeModelAccEngineVersions(_ input: DescribeModelAccEngineVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeModelAccEngineVersionsResponse > {
        self.client.execute(action: "DescribeModelAccEngineVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询模型加速引擎版本列表
    @inlinable
    public func describeModelAccEngineVersions(_ input: DescribeModelAccEngineVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelAccEngineVersionsResponse {
        try await self.client.execute(action: "DescribeModelAccEngineVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeModelAccEngineVersions请求参数结构体
    public struct DescribeModelAccEngineVersionsRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeModelAccEngineVersions返回参数结构体
    public struct DescribeModelAccEngineVersionsResponse: TCResponseModel {
        /// 模型加速版本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccEngineVersions: [ModelAccEngineVersion]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case modelAccEngineVersions = "ModelAccEngineVersions"
            case requestId = "RequestId"
        }
    }
}
