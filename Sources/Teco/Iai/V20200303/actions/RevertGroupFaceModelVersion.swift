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

import Logging
import NIOCore
import TecoCore

extension Iai {
    /// RevertGroupFaceModelVersion请求参数结构体
    public struct RevertGroupFaceModelVersionRequest: TCRequestModel {
        /// 需要回滚的升级任务ID。
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// RevertGroupFaceModelVersion返回参数结构体
    public struct RevertGroupFaceModelVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 人员库版本回滚
    ///
    /// 本接口用于回滚人员库的人脸识别算法模型版本。单个人员库有且仅有一次回滚机会。
    ///
    /// 回滚操作会在10s内生效，回滚操作中，您对人员库的操作可能会失效。
    @available(*, unavailable, message: "同理")
    @inlinable @discardableResult
    public func revertGroupFaceModelVersion(_ input: RevertGroupFaceModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevertGroupFaceModelVersionResponse> {
        fatalError("RevertGroupFaceModelVersion is no longer available.")
    }

    /// 人员库版本回滚
    ///
    /// 本接口用于回滚人员库的人脸识别算法模型版本。单个人员库有且仅有一次回滚机会。
    ///
    /// 回滚操作会在10s内生效，回滚操作中，您对人员库的操作可能会失效。
    @available(*, unavailable, message: "同理")
    @inlinable @discardableResult
    public func revertGroupFaceModelVersion(_ input: RevertGroupFaceModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevertGroupFaceModelVersionResponse {
        fatalError("RevertGroupFaceModelVersion is no longer available.")
    }

    /// 人员库版本回滚
    ///
    /// 本接口用于回滚人员库的人脸识别算法模型版本。单个人员库有且仅有一次回滚机会。
    ///
    /// 回滚操作会在10s内生效，回滚操作中，您对人员库的操作可能会失效。
    @available(*, unavailable, message: "同理")
    @inlinable @discardableResult
    public func revertGroupFaceModelVersion(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevertGroupFaceModelVersionResponse> {
        fatalError("RevertGroupFaceModelVersion is no longer available.")
    }

    /// 人员库版本回滚
    ///
    /// 本接口用于回滚人员库的人脸识别算法模型版本。单个人员库有且仅有一次回滚机会。
    ///
    /// 回滚操作会在10s内生效，回滚操作中，您对人员库的操作可能会失效。
    @available(*, unavailable, message: "同理")
    @inlinable @discardableResult
    public func revertGroupFaceModelVersion(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevertGroupFaceModelVersionResponse {
        fatalError("RevertGroupFaceModelVersion is no longer available.")
    }
}
