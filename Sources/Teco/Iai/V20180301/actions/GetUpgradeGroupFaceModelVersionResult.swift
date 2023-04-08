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

extension Iai {
    /// GetUpgradeGroupFaceModelVersionResult请求参数结构体
    public struct GetUpgradeGroupFaceModelVersionResultRequest: TCRequestModel {
        /// 升级任务ID，用于查询、获取人员库升级的进度和结果。
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// GetUpgradeGroupFaceModelVersionResult返回参数结构体
    public struct GetUpgradeGroupFaceModelVersionResultResponse: TCResponseModel {
        /// 人员升级任务预估结束时间。 StartTimestamp的值是自 Unix 纪元时间到人员查重任务预估结束的毫秒数。
        /// Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。
        /// 如果为0表示这个任务已经执行完毕。
        public let endTimestamp: UInt64

        /// 升级任务完成进度。取值[0.0，100.0]。
        public let progress: Float

        /// 0表示升级中，1表示升级完毕，2表示回滚完毕。
        public let status: Int64

        /// 升级起始时间。
        /// StartTime的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        /// Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。
        /// 有关更多信息，请参阅 Unix 时间。
        public let startTime: UInt64

        /// 当前算法模型版本。
        public let fromFaceModelVersion: String

        /// 目标算法模型版本。
        public let toFaceModelVersion: String

        /// 人员库ID。
        public let groupId: String

        /// 无法升级的人脸Id信息，文件格式为json。半小时有效
        public let failedFacesUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endTimestamp = "EndTimestamp"
            case progress = "Progress"
            case status = "Status"
            case startTime = "StartTime"
            case fromFaceModelVersion = "FromFaceModelVersion"
            case toFaceModelVersion = "ToFaceModelVersion"
            case groupId = "GroupId"
            case failedFacesUrl = "FailedFacesUrl"
            case requestId = "RequestId"
        }
    }

    /// 人员库升级结果查询
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionResult(_ input: GetUpgradeGroupFaceModelVersionResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeGroupFaceModelVersionResultResponse> {
        fatalError("GetUpgradeGroupFaceModelVersionResult is no longer available.")
    }

    /// 人员库升级结果查询
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionResult(_ input: GetUpgradeGroupFaceModelVersionResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeGroupFaceModelVersionResultResponse {
        fatalError("GetUpgradeGroupFaceModelVersionResult is no longer available.")
    }

    /// 人员库升级结果查询
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionResult(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeGroupFaceModelVersionResultResponse> {
        fatalError("GetUpgradeGroupFaceModelVersionResult is no longer available.")
    }

    /// 人员库升级结果查询
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func getUpgradeGroupFaceModelVersionResult(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeGroupFaceModelVersionResultResponse {
        fatalError("GetUpgradeGroupFaceModelVersionResult is no longer available.")
    }
}
