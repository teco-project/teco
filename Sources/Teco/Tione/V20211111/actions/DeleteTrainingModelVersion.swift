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
    /// DeleteTrainingModelVersion请求参数结构体
    public struct DeleteTrainingModelVersionRequest: TCRequestModel {
        /// 模型版本ID
        public let trainingModelVersionId: String
        
        /// 是否同步清理cos
        public let enableDeleteCos: Bool?
        
        public init (trainingModelVersionId: String, enableDeleteCos: Bool? = nil) {
            self.trainingModelVersionId = trainingModelVersionId
            self.enableDeleteCos = enableDeleteCos
        }
        
        enum CodingKeys: String, CodingKey {
            case trainingModelVersionId = "TrainingModelVersionId"
            case enableDeleteCos = "EnableDeleteCos"
        }
    }
    
    /// DeleteTrainingModelVersion返回参数结构体
    public struct DeleteTrainingModelVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除模型版本
    @inlinable
    public func deleteTrainingModelVersion(_ input: DeleteTrainingModelVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTrainingModelVersionResponse > {
        self.client.execute(action: "DeleteTrainingModelVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除模型版本
    @inlinable
    public func deleteTrainingModelVersion(_ input: DeleteTrainingModelVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrainingModelVersionResponse {
        try await self.client.execute(action: "DeleteTrainingModelVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
