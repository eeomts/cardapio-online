<?php 
 $SelectUsers = $main->getAllUsers();
 


 echo $SelectUsers;

?>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header">

			<!-- Logo -->
			<div class="header-left">
				<a href="<?php echo BASE_URL; ?>index.html" class="logo">
					<img src="<?php echo BASE_URL; ?>assets/img/logo.png" alt="Logo">
				</a>
				<a href="<?php echo BASE_URL; ?>index.html" class="logo logo-small">
					<img src="<?php echo BASE_URL; ?>assets/img/logo-small.png" alt="Logo" width="30" height="30">
				</a>
				<!-- Sidebar Toggle -->
				<a href="javascript:void(0);" id="toggle_btn">
					<i class="feather-chevrons-left"></i>
				</a>
				<!-- /Sidebar Toggle -->

				<!-- Mobile Menu Toggle -->
				<a class="mobile_btn" id="mobile_btn">
					<i class="feather-chevrons-left"></i>
				</a>
				<!-- /Mobile Menu Toggle -->
			</div>
			<!-- /Logo -->

			<!-- Search -->
			 <!-- 	SEARCH É O CARALHO NEGOCIO TRABALHOSO DE MERDA
				 -->
			<!-- <div class="top-nav-search">
				<form>
					<input type="text" class="form-control" placeholder="Start typing your Search...">
					<button class="btn" type="submit"><i class="feather-search"></i></button>
				</form>
			</div> -->
			<!-- /Search -->

			<!-- Header Menu -->
			<ul class="nav user-menu">

				<!-- Notifications
				<li class="nav-item dropdown">
					<a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
						<i class="feather-bell"></i> <span class="badge badge-pill">5</span>
					</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span>
							<a href="javascript:void(0)" class="clear-noti"> Clear All</a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message">
									<!-- se for ter nottificaçoes bora tudo aqui dentro desse LI mas ve antes como as divs funcionam la no tema pra ver se tem um padrao mas vai seer pouca coisa que vai ter essa merdinha -->
								<!-- </li>
								
							</ul>
						</div> -->
						<!-- <div class="topnav-dropdown-footer"> -->
							<!-- <a href="javascript:void(0);">View all Notifications</a> -->
							 <!-- da um jeito nisso aqui mas da muita preguiça fazer esse trem pelo amor de deus, notificaççao e logs e chato demais caramba -->
						<!-- </div>
					</div>
				</li> -->
				<!-- /Notifications -->

				<!-- User Menu -->
				<li class="nav-item dropdown has-arrow main-drop">
					<a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
						<span class="user-img">
							<img src="<?php echo BASE_URL; ?>assets/img/profiles/avatar-07.jpg" alt="Img">
							<span class="status online"></span>
						</span>
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html"><i data-feather="user" class="me-1"></i>
							Profile</a>
						<a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i>
							Settings</a>
						<a class="dropdown-item" href="login.html"><i data-feather="log-out" class="me-1"></i>
							Logout</a>
					</div>
				</li>
				<!-- /User Menu -->

			</ul>
			<!-- /Header Menu -->

		</div>
		<!-- /Header -->

		<!-- Sidebar -->
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="menu-title"><span>Admin</span></li>
						<li>
							<a href="<?php echo BASE_URL; ?>index.html"><i data-feather="home"></i> <span>Visão geral</span></a>
						</li>
						<li>
							<a href="<?php echo BASE_URL; ?>produtos.html"><i data-feather="database"></i> <span>Produtos</span></a>
						</li>
						<li class="active">
							<a href="<?php echo BASE_URL; ?>usuarios.html"><i data-feather="user-check"></i> <span>Usuários</span></a>
						</li>


					</ul>
				</div>
			</div>
		</div>
		<!-- /Sidebar -->


		<!-- Page Wrapper -->
		<div class="page-wrapper">
			<div class="content container-fluid">

				<!-- Page Header -->
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title" style="font-size:35px">Usuários</h3>
							<hr>
							<ul class="breadcrumb">
								
									<li>
										<button type="button" class="btn btn-info">+ Novo usuario</button>
									</li>
								
							</ul>

						</div>
						
					</div>
				</div>
				<!-- /Page Header -->

				
				<!-- /Search Filter -->
				<!-- tudo ta escrito do jeito que é prra fazer enquanto eu to pensando aqui, hoje é dia 04/12/25 as 00:24,nao tem erro, é so ver onde é pra colocar cada variavel do foreach animal -->
				<!-- é muito simples -->
				<!-- se eu nao procrastinasse eu tava rico nessa merda, nao sei como vender esse trem nem como vou hospedar, amem deus! -->
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-center table-hover mb-0 datatable">
										<thead>
											<tr>
												<th></th>
												<th>ID</th>

												<th>Nome</th>
												<th>Telefone</th>
												<th>Data de Cadastro</th>
												<th>Cargo</th>
												<th>Status</th>
												<th class="text-end">Admin</th>
											</tr>
										</thead>
										<tbody>

											<tr>
												<td>

												</td>
												<!-- coloca a porra do id aqui -->
												<td>
													<!-- pega o id la muito facil fazer com foreach animal 	-->
												</td>
												<td>
													<h2 class="table-avatar">
														<a href=""></a>
														<!-- nome -->
													</h2>
												</td>
												<td>
													<h2 class="table-avatar">
														<a href="">
															<!-- bota o telefone do cara -->
														</a>
													</h2>
												</td>
												<td>
													<!-- aqui a data que cadastrou o usuario -->
												</td>
												<td> <!-- cargo nessa porra-->
													<!--  dentro aqui coloca o cargo idiota -->
												</td>

												<td>
													<!-- <button type="button" class="btn btn-success">Success</button> -->
													 <!-- <button type="button" class="btn btn-danger">Danger</button> -->
													 <!-- quando for fazer o select faz um if aqui dentro e um echo na classe do botao beleza -->
												</td>

												<td class="text-end">
													<a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2"
														data-bs-toggle="modal" data-bs-target="#add-category"><i
															class="far fa-edit"></i></a>
													<a href="javascript:void(0);" class="btn btn-sm btn-danger"
														data-bs-toggle="modal" data-bs-target="#delete_category"><i
															class="far fa-trash-alt"></i></a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /Page Wrapper -->
		</div>
	</div>
	<!-- /Main Wrapper -->

	<!-- Category Modal -->
	<div class="modal fade custom-modal" id="add-category">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header flex-wrap">
					<h4 class="modal-title">Edit Provider</h4>
					<button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label>Company Name</label>
							<input type="text" class="form-control" value="Focused Holistic Hardware">
						</div>
						<div class="form-group">
							<label>Primary Contact</label>
							<input type="text" class="form-control" value="Emily Smith">
						</div>
						<div class="form-group">
							<label>Website</label>
							<input type="text" class="form-control" value="https://focusedhardware.de/">
						</div>
						<div class="form-group">
							<label>Total Projects</label>
							<input type="text" class="form-control" value="120">
						</div>
						<div class="form-group">
							<label>Status</label>
							<select class="form-control form-select">
								<option selected>Enabled</option>
								<option>Disable</option>
							</select>
						</div>
						<div class="mt-4">
							<button type="submit" class="btn btn-primary btn-block">Submit</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- /Category Modal -->

	<!-- Delete Modal -->
	<div class="modal custom-modal fade" id="delete_category" role="dialog">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body">
					<div class="form-header">
						<h3>Delete</h3>
						<p>Are you sure want to delete?</p>
					</div>
					<div class="modal-btn delete-action">
						<div class="row">
							<div class="col-6">
								<a href="javascript:void(0);" class="btn btn-primary continue-btn">Delete</a>
							</div>
							<div class="col-6">
								<a href="javascript:void(0);" data-bs-dismiss="modal"
									class="btn btn-primary cancel-btn">Cancel</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Delete Modal -->

	<!-- jQuery -->
