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

extension Essbasic {
    /// 销毁流程文件
    ///
    /// 通过此接口（DestroyFlowFile）可删除指定流程中的合同文件。
    /// 注：调用此接口前，请确保此流程已属于归档状态。您可通过查询流程信息接口（DescribeFlow）进行查询。
    @inlinable
    public func destroyFlowFile(_ input: DestroyFlowFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DestroyFlowFileResponse > {
        self.client.execute(action: "DestroyFlowFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 销毁流程文件
    ///
    /// 通过此接口（DestroyFlowFile）可删除指定流程中的合同文件。
    /// 注：调用此接口前，请确保此流程已属于归档状态。您可通过查询流程信息接口（DescribeFlow）进行查询。
    @inlinable
    public func destroyFlowFile(_ input: DestroyFlowFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyFlowFileResponse {
        try await self.client.execute(action: "DestroyFlowFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DestroyFlowFile请求参数结构体
    public struct DestroyFlowFileRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 流程ID
        public let flowId: String
        
        public init (caller: Caller, flowId: String) {
            self.caller = caller
            self.flowId = flowId
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
        }
    }
    
    /// DestroyFlowFile返回参数结构体
    public struct DestroyFlowFileResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
