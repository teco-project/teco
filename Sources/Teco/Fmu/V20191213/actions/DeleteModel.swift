//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Fmu {
    /// 删除唇色素材
    ///
    /// 删除已注册的唇色素材。
    @inlinable
    public func deleteModel(_ input: DeleteModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteModelResponse > {
        self.client.execute(action: "DeleteModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除唇色素材
    ///
    /// 删除已注册的唇色素材。
    @inlinable
    public func deleteModel(_ input: DeleteModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelResponse {
        try await self.client.execute(action: "DeleteModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteModel请求参数结构体
    public struct DeleteModelRequest: TCRequestModel {
        /// 素材ID。
        public let modelId: String
        
        public init (modelId: String) {
            self.modelId = modelId
        }
        
        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
        }
    }
    
    /// DeleteModel返回参数结构体
    public struct DeleteModelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}