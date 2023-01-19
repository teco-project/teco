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

extension Ssm {
    /// DeleteSecret请求参数结构体
    public struct DeleteSecretRequest: TCRequestModel {
        /// 指定需要删除的凭据名称。
        public let secretName: String

        /// 指定计划删除日期，单位（天），0（默认）表示立即删除， 1-30 表示预留的天数，超出该日期之后彻底删除。
        /// 当凭据类型为SSH密钥对凭据时，此字段只能取值只能为0。
        public let recoveryWindowInDays: UInt64?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，取值：
        /// True -- 表示不仅仅清理此凭据中存储的SSH密钥信息，还会将SSH密钥对从CVM侧进行清理。注意，如果SSH密钥此时绑定了CVM实例，那么会清理失败。
        /// False --  表示仅仅清理此凭据中存储的SSH密钥信息，不在CVM进侧进行清理。
        public let cleanSSHKey: Bool?

        public init(secretName: String, recoveryWindowInDays: UInt64? = nil, cleanSSHKey: Bool? = nil) {
            self.secretName = secretName
            self.recoveryWindowInDays = recoveryWindowInDays
            self.cleanSSHKey = cleanSSHKey
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case recoveryWindowInDays = "RecoveryWindowInDays"
            case cleanSSHKey = "CleanSSHKey"
        }
    }

    /// DeleteSecret返回参数结构体
    public struct DeleteSecretResponse: TCResponseModel {
        /// 指定删除的凭据名称。
        public let secretName: String

        /// 凭据删除的日期，unix时间戳。
        public let deleteTime: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case deleteTime = "DeleteTime"
            case requestId = "RequestId"
        }
    }

    /// 删除凭据信息
    ///
    /// 删除指定的凭据信息，可以通过RecoveryWindowInDays参数设置立即删除或者计划删除。对于计划删除的凭据，在删除日期到达之前状态为 PendingDelete，并可以通过RestoreSecret 进行恢复，超出指定删除日期之后会被彻底删除。您必须先通过 DisableSecret 停用凭据后才可以进行（计划）删除操作。
    @inlinable
    public func deleteSecret(_ input: DeleteSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecretResponse> {
        self.client.execute(action: "DeleteSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除凭据信息
    ///
    /// 删除指定的凭据信息，可以通过RecoveryWindowInDays参数设置立即删除或者计划删除。对于计划删除的凭据，在删除日期到达之前状态为 PendingDelete，并可以通过RestoreSecret 进行恢复，超出指定删除日期之后会被彻底删除。您必须先通过 DisableSecret 停用凭据后才可以进行（计划）删除操作。
    @inlinable
    public func deleteSecret(_ input: DeleteSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecretResponse {
        try await self.client.execute(action: "DeleteSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除凭据信息
    ///
    /// 删除指定的凭据信息，可以通过RecoveryWindowInDays参数设置立即删除或者计划删除。对于计划删除的凭据，在删除日期到达之前状态为 PendingDelete，并可以通过RestoreSecret 进行恢复，超出指定删除日期之后会被彻底删除。您必须先通过 DisableSecret 停用凭据后才可以进行（计划）删除操作。
    @inlinable
    public func deleteSecret(secretName: String, recoveryWindowInDays: UInt64? = nil, cleanSSHKey: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecretResponse> {
        self.deleteSecret(DeleteSecretRequest(secretName: secretName, recoveryWindowInDays: recoveryWindowInDays, cleanSSHKey: cleanSSHKey), region: region, logger: logger, on: eventLoop)
    }

    /// 删除凭据信息
    ///
    /// 删除指定的凭据信息，可以通过RecoveryWindowInDays参数设置立即删除或者计划删除。对于计划删除的凭据，在删除日期到达之前状态为 PendingDelete，并可以通过RestoreSecret 进行恢复，超出指定删除日期之后会被彻底删除。您必须先通过 DisableSecret 停用凭据后才可以进行（计划）删除操作。
    @inlinable
    public func deleteSecret(secretName: String, recoveryWindowInDays: UInt64? = nil, cleanSSHKey: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecretResponse {
        try await self.deleteSecret(DeleteSecretRequest(secretName: secretName, recoveryWindowInDays: recoveryWindowInDays, cleanSSHKey: cleanSSHKey), region: region, logger: logger, on: eventLoop)
    }
}
