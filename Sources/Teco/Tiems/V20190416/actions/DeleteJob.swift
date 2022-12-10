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

extension Tiems {
    /// 删除任务
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除任务
    @inlinable
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteJobResponse > {
        self.client.execute(action: "DeleteJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除任务
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除任务
    @inlinable
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobResponse {
        try await self.client.execute(action: "DeleteJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteJob请求参数结构体
    public struct DeleteJobRequest: TCRequestModel {
        /// 任务 Id
        public let jobId: String
        
        public init (jobId: String) {
            self.jobId = jobId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }
    
    /// DeleteJob返回参数结构体
    public struct DeleteJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}