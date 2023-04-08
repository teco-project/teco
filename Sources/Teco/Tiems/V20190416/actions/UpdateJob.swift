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

import TecoCore

extension Tiems {
    /// UpdateJob请求参数结构体
    public struct UpdateJobRequest: TCRequestModel {
        /// 任务 Id
        public let jobId: String

        /// 任务更新动作，支持：Cancel
        public let jobAction: String?

        /// 备注
        public let description: String?

        public init(jobId: String, jobAction: String? = nil, description: String? = nil) {
            self.jobId = jobId
            self.jobAction = jobAction
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobAction = "JobAction"
            case description = "Description"
        }
    }

    /// UpdateJob返回参数结构体
    public struct UpdateJobResponse: TCResponseModel {
        /// 任务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let job: Job?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case job = "Job"
            case requestId = "RequestId"
        }
    }

    /// 更新任务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateJob(_ input: UpdateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobResponse> {
        fatalError("UpdateJob is no longer available.")
    }

    /// 更新任务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateJob(_ input: UpdateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateJobResponse {
        fatalError("UpdateJob is no longer available.")
    }

    /// 更新任务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateJob(jobId: String, jobAction: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobResponse> {
        fatalError("UpdateJob is no longer available.")
    }

    /// 更新任务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateJob(jobId: String, jobAction: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateJobResponse {
        fatalError("UpdateJob is no longer available.")
    }
}
