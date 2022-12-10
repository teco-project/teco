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

extension Asr {
    /// 语音流异步识别任务列表
    ///
    /// 本接口用于查询当前在运行的语音流异步识别任务列表。
    /// <br>•   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    @inlinable
    public func describeAsyncRecognitionTasks(_ input: DescribeAsyncRecognitionTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAsyncRecognitionTasksResponse > {
        self.client.execute(action: "DescribeAsyncRecognitionTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 语音流异步识别任务列表
    ///
    /// 本接口用于查询当前在运行的语音流异步识别任务列表。
    /// <br>•   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    @inlinable
    public func describeAsyncRecognitionTasks(_ input: DescribeAsyncRecognitionTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAsyncRecognitionTasksResponse {
        try await self.client.execute(action: "DescribeAsyncRecognitionTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAsyncRecognitionTasks请求参数结构体
    public struct DescribeAsyncRecognitionTasksRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeAsyncRecognitionTasks返回参数结构体
    public struct DescribeAsyncRecognitionTasksResponse: TCResponseModel {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: AsyncRecognitionTasks
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
